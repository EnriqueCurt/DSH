FROM alpine:latest

# Crea un archivo para demostrar que la imagen se construyó
RUN echo "Imagen creada correctamente" > /mensaje.txt

CMD ["cat", "/mensaje.txt"]
