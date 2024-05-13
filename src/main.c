#include <arpa/inet.h>
#include <errno.h>
#include <stdio.h>
#include <sys/socket.h>
#include <unistd.h>
#include <string.h>

#define  PORT 8080
#define BUFFER_SIZE 1024

int main() {

  char buffer[BUFFER_SIZE];
  char resp[] = "HTTP/1.0 200 OK\r\n"
                  "Server: webserver-c\r\n"
                  "Content-type: text/html\r\n\r\n"
                  "<html>hello, world</html>\r\n";

  //Creando el  socket
  int sockfd = socket(AF_INET, SOCK_STREAM, 0);
  if (sockfd == -1) {
    perror("webserver (socket)");
    return 1;
  }
  printf("socket creado satisfactoriamente\n");

  // Cree la dirección para vincular el socket
  struct sockaddr_in host_addr;
  int host_addrlen = sizeof(host_addr);

  host_addr.sin_family = AF_INET;
  host_addr.sin_port = htons(PORT);
  host_addr.sin_addr.s_addr = htonl(INADDR_ANY);

  // Creando direccion de cliente
  struct sockaddr_in client_addr;
  int client_addrlen = sizeof(client_addr);

  // Vincular el socket a la dirección
  if (bind(sockfd, (struct sockaddr *)&host_addr, host_addrlen) != 0) {
    perror("webserver (vincular)");
    return 1;
  }
  printf("Socket vinculado exitosamente a la direccion.\n");

  // Escuchando direcciones entrantes
  if (listen(sockfd, SOMAXCONN) != 0) {
    perror("webserver (escuhando)");
    return 1;
  }
  printf("Servidor escuchando conexiones\n");

  for (;;) {
    int newsocketfd = accept(sockfd, (struct sockaddr *)&host_addr,
                            (socklen_t *)&host_addrlen);
    if (newsocketfd < 0) {
      perror("webserver (aceptado)");
      continue;
    }
    printf("coneccion aceptada\n");

    int sockn = getsockname(newsocketfd, (struct sockaddr *)&client_addr,
                            (socklen_t *)&client_addr);
    if (sockn < 0) {
      perror("webserver (conseguir nombre del socket)");
      continue;
    }

    int valread = read(newsocketfd, buffer, BUFFER_SIZE);
    if (valread < 0) {
      perror("webserver (lectura)");
      continue;
    }

    // EScribiendo la respuesta
    char method[BUFFER_SIZE], uri[BUFFER_SIZE], version[BUFFER_SIZE];
        sscanf(buffer, "%s %s %s", method, uri, version);
        printf("[%s:%u] %s %s %s\n", inet_ntoa(client_addr.sin_addr),
               ntohs(client_addr.sin_port), method, version, uri);

    int valwrite = write(newsocketfd, resp, strlen(resp));
    if (valwrite < 0) {
      perror("webserver (escribiendo)");
      continue;
    }


    close(newsocketfd);
  }

  return 0;
}
