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

5. **respaldo.sql**: Archivo.sql el cual contendrá todos los datos necesarios para inicializar un ambiente de pruebas del proyecto para revisión.

## 🚀 Pasos a seguir

1. **Clonar el repositorio**

   ```bash
   git clone [URL_DEL_REPOSITORIO]
   cd [NOMBRE_DEL_DIRECTORIO]

2. **Renombrar archivo .env.example**
   El repositorio contiene un archivo de configuración llamado .env.example, este al momento de la ejecución del docker debe poseer las mismas conexiones y credenciales que el docker-compose. Si no hacemos esto, al levantar la aplicación obtendermos un error  500.
   Para renombrar el archiv .env.example se debe ejecutar el siguiente comando en la carpeta raíz del repositorio:
      ```bash
      mv env.example .env

2. **Construir y levantar los contenedores**
   Una vez realizados estos cambios, ya podemos construir y levantar los contenedores tanto de base de datos como el de la aplicación con el siguiente comando:
   ```bash
   docker-compose up --build -d

3. Accede a la aplicación en tu navegador usando http://localhost:PUERTO (o cualquier otro puerto que hayas especificado).

4. **Cuentas**
   Para realizar pruebas del sistema, este cuenta con usuarios demo para poder visualizar los diferentes módulos del sistema.
   ```bash
   administrador@sia.cl -> 12345678
   servicios@sia.cl     -> 12345678
   informatica@sia.cl   -> 12345678
   juridico@sia.cl      -> 12345678
   funcionario@sia.cl   -> 12345678
   funcionario2@sia.cl  -> 12345678
   
## Recomendaciones
   1. En caso de que no se pueda visualizar el archivo .env.example, lo que se debe hacer es habilitar la visualización de archivos ocultos (en sistemas Linux).

## 📜 Licencia

MIT



## 🚀 Instrucciones para Despliegue en Producción (leer documento adjunto)

Este capítulo proporciona un resumen de los pasos para desplegar la aplicación en un entorno de producción. Para comandos detallados y explicaciones completas, consulta el documento adjunto en el repositorio.

### Consideraciones Previas
Breve descripción sobre las consideraciones iniciales como la elección de la IP y los puertos.

### Instalación de Dependencias y Servicios
Resumen de la instalación y configuración de servicios esenciales como PHP, Apache2, Composer y MariaDB.

### Configuración del Proyecto Laravel
Descripción de los pasos para configurar Laravel, incluyendo la descarga del proyecto, instalación de dependencias, y configuración de VirtualHost y base de datos.

### Configuración Adicional de MariaDB
Descripción de cómo ajustar la configuración por defecto de MariaDB, incluyendo cambios en la dirección IP y el puerto.

### Notas Adicionales
Consejos finales y recomendaciones para asegurar un despliegue exitoso.
