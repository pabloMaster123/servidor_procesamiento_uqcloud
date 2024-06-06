# Usa una imagen base de Go
FROM golang:1.19

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia la carpeta desktopcloud al directorio de trabajo
COPY  Codigo .

# Compila el archivo main.go (ajusta según tus necesidades)
WORKDIR /app/servidor_procesamiento_uqcloud/Procesador
RUN go build -o server servidor.go

# docker cp "nombre contenedor":/app/servidor_procesamiento_uqcloud/Procesador D:\