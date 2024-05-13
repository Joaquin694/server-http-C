CMAKE_MINIMUM_REQUIRED(VERSION 3.10)

# Nombre del Proyecto
PROJECT(Server)

# Define las variables SRC_DIR y INC_DIR que serán utilizadas 
# posteriormente
# La variable PROJECT_SOURCE_DIR es definida por CMake 
# y su valor es la ruta al directorio donde se encuentra 

# La sintaxis ${nombre_variable} extrae el valor de la variable
set(SRC_DIR ${PROJECT_SOURCE_DIR}/src)
set(INC_DIR ${PROJECT_SOURCE_DIR}/include)

# Define el nombre del ejecutabe y la ruta a los archivos de código
add_executable(${PROJECT_NAME} ${SRC_DIR}/main.c)

# Especifica la ruta a los archivos header. 
target_include_directories(${PROJECT_NAME} PUBLIC "${INC_DIR}" /include)
