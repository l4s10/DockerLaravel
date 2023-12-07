## 👨‍💻👩‍💻 Entorno utilizado
El proyecto ocupa el siguiente entorno de desarrollo
1. **PHP 8.2**
2. **Apache**
3. **MariaDB**
4. **Laravel 10**

## 📁 ¿Qué son estos archivos?

1. **Dockerfile**: Es la receta para construir nuestra imagen Docker. Define cómo se construirá nuestra aplicación, qué software se instalará y cómo se configurará.

2. **docker-compose.yml**: Este archivo define cómo se ejecutará nuestra aplicación. Puedes configurar servicios, redes y volúmenes.

3. **laravel.conf**: Es un archivo de configuración para Apache. Personaliza la configuración por defecto del servidor Apache dentro del contenedor, asegurando que se sirva nuestra aplicación Laravel correctamente y se gestionen las URLs amigables que proporciona Laravel.

4. **.env**: Es un archivo de configuración con las mismas credenciales de docker-compose.yml, debido a que el proyecto que se va a levantar también necesita un archivo de configuración .env para poder levantar la aplicacion correctamente.

5. **respaldo.sql**
## 🚀 Pasos a seguir

1. **Clonar el repositorio**

   ```bash
   git clone [URL_DEL_REPOSITORIO]
   cd [NOMBRE_DEL_DIRECTORIO]

2. **Construir y levantar los contenedores**

   ```bash
   docker-compose up --build -d

3. Accede a la aplicación en tu navegador usando http://localhost:PUERTO (o cualquier otro puerto que hayas especificado).

## 📜 Licencia

MIT

