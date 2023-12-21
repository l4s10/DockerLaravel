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



## 🚀 Instrucciones para Despliegue en Producción

A continuación, se detallan las instrucciones y comandos necesarios para realizar una instalación exitosa del Sistema Integrado de Administración (SIA). Se recomienda trabajar con un sistema operativo Debian 12 para garantizar la compatibilidad.

### Sistema Operativo
Se recomienda trabajar con un sistema operativo Debian 12 para garantizar la compatibilidad del proyecto. Acceda como superusuario ejecutando el siguiente comando:
      ```bash
      su -

### Instalación de Librerías y Dependencias
instale las librerías básicas necesarias con el siguiente comando:
      ```bash
      sudo apt-get update && sudo apt-get install -y curl git unzip libzip-dev libicu-dev libonig-dev libpng-dev libjpeg-dev libfreetype6-dev libxml2-dev

### PHP y Extensiones
Para instalar PHP con las respectivas extensiones necesarias, ejecute el siguiente comando:
      ```bash
      sudo apt-get install -y php libapache2-mod-php php-dom php-xml php-curl php-mysql

### Servidor web
Se recomienda la instalación del servidor web Apache2 para garantizar la compatibilidad. Sin embargo, también se puede utilizar otro servicio web. Para instalar Apache2, utilice el siguiente comando:
      ```bash
      sudo apt-get install apache2 -y

### Configuración del servidor web
Si ha transparentado un puerto, asegúrese de cambiarlo en el archivo de configuración de su servidor web usando un editor de texto con el comando correspondiente:
      ```bash
      $EDITOR_TEXTO /etc/SERVICIO_WEB/ARCHIVO_CONFIGURACION_PUERTO”
En el caso de utilizar Apache2 (recomendado) con el editor de texto nano, edite el archivo con el comando:
      ```bash
      nano /etc/apache2/ports.conf
Si utiliza otra IP, diríjase al archivo de configuración de su servicio web y realice el procedimiento similar.
      ```bash
      $ EDITOR_TEXTO /etc/SERVICIO_WEB/ARCHIVO_CONFIGURACION_SERVICIO
En el caso de apache2 usando el editor nano (recomendado):
      ```bash
      nano /etc/apache2/apache2.conf
Esto hará que el servicio web utilice la IP designada en su máquina. Luego guarde el archivo y recargue el servicio.
En el caso de usar apache2, habilite el módulo “rewrite” de apache con el comando:
      ```bash
      a2enmod rewrite”
y reinicie el servicio con “$ service apache2 restart”.
En caso de usar otro servicio web, busque el comando equivalente.
Si ha seguido todos los pasos correctamente, asegúrese que pueda visualizar la página por defecto en ‘http://IP_MAQUINA:PUERTO_TRANSPARENTADO/’.

### Composer
Para instalar Composer, ejecute el siguiente comando como superusuario:
      ```bash
      curl -sSL https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

### Proyecto
En esta sección, se muestra cómo descargar y configurar el proyecto.
#### Descarga del proyecto
Clone el repositorio desde GIT en el directorio de su elección:
      ```bash
      git clone https://github.com/l4s10/SIA2_SII.git
#### Instalacion de dependencias del proyecto
Una vez descargado el proyecto, ingrese al directorio con el comando:
      ```bash
      cd /DIRECTORIO_RAIZ_PROYECTO
Luego ejecute:
      ```bash
      composer install
### Configuraciones
#### Permisos
En sistemas GNU/Linux, Laravel puede presentar conflictos con permisos de directorios. Corrija esto ejecutando el comando:
      ```bash
      sudo chown -R www-data:www-data /DIRECTORIO_PROYECTO/storage DIRECTORIO_PRYECTO/bootstrap/cache
#### Hosting Compartido (VirtualHost)
Ubíquese en la carpeta de configuración del hosting compartido con el comando:
      ```bash
      cd /etc/SERVICIO_WEB/DIRECTORIO_HOSTING_COMPARTIDO
Cree un archivo de configuración para el proyecto, respetando las configuraciones del servidor web y apuntando al directorio raíz. En el caso de utilizar Apache2, debe tener el siguiente formato:
      ```bash
      <VirtualHost *:PUERTO_TRANSPARENTADO>
         ServerAdmin webmaster@IP_MAQUINA
         DocumentRoot /DIRECTORIO_RAIZ_PROYECTO/public
      
         <Directory /DIRECTORIO_RAIZ_PROYECTO/public>
            AllowOverride All
            Require all granted
         </Directory>
      
         ErrorLog ${APACHE_LOG_DIR}/error.log
         CustomLog ${APACHE_LOG_DIR}/access.log combined
      </VirtualHost>
Luego, habilite el archivo de configuración creado, en el caso de apache puede hacerlo con siguiente comando:
      ```bash
      sudo a2ensite NOMBRE_ARCHIVO.conf
Después, deshabilite el sitio por defecto del servidor web y reinicie el servicio con los siguientes comandos:
      ```bash
      sudo a2dissite 000-default.conf
      sudo service apache2 restart
No olvide verificar que la sintaxis de su configuración sea correcta con:
      ```bash
      sudo apache2ctl configtest
En caso de utilizar otro servidor web, busque los comandos equivalentes segun sea el caso.
Si al visitar el enlace http://IP_MAQUINA:PUERTO_CONFIGURADO aparece una página mostrando un “error 500”, significa que el archivo de configuración funciona correctamente, pero dicho error se muestra debido a que aún falta configurar la base de datos y el entorno del proyecto.
### MariaDB (MySQL)
Si ya posee un servidor de base de datos, puede omitir esta sección. A continuación, se detallan los pasos para instalar y configurar MariaDB.
#### Instalacion
Como superusuario, ejecute el siguiente comando para instalar MariaDB:
      ```bash
      sudo apt-get install mariadb-server -y
Una vez instalado, ejecute la instalacion segura con:
      ```bash
      sudo mysql_secure_installation
Se le solicitará la contraseña de su usuario root. Ingrese la contraseña.
En “Switch to unix socket authentication”, ingrese “n”.
En “Change root password”, si ya tiene una, ingrese “n”.
En “Remove anonymous users”, ingrese “y”.
En “Disallow root login remotely”, ingrese “y”.
En “Remove test databases and access to it”, ingrese “y”.
Finalmente, recargue la tabla de privilegios cuando la terminal diga “Reload privilege tables now?”, ingrese “y”.
Recibirá un mensaje indicando que MariaDB se ha instalado correctamente. En caso de problemas, puede volver a ejecutar el comando anterior y cambiar los ajustes.
#### Configuracion
Para configurar la base de datos, primero necesitamos ingresar como root a MariaDB con el siguiente comando:
      ```bash
      mariadb -u root -p
Una vez dentro, cree una nueva base de datos con el comando:
      ```bash
      CREATE DATABASE NOMBRE_BDD;
Si todo funciona correctamente, podra visualizar la nueva base de datos con el comando:
      ```bash
      SHOW DATABASES;
Luego, configure un usuario para la base de datos. Ejecute el siguiente comando dentro del motor:
      ```bash
      CREATE USER ‘nombre_usuario’@’IP’ IDENTIFIED BY ‘contraseña’;
Despues, otorguele los permisos necesarios al usuario recien creado con el comando:
      ```bash
      GRANT ALL PRIVILEGES ON NOMBRE_BDD.* TO ‘usuario_creado’@’IP’;
Una vez otorgados los permisos, refresque la tabla de privilegios con:
      ```bash
      FLUSH PRIVILEGES;
Marque la base de datos como "En uso":
      ```bash
      USE NOMBRE_BDD;
Y salga del motor:
      ```bash
      exit
#### Respaldo de la base de datos
Si el repositorio incluye un archivo "respaldo.sql", puede importarlo con el siguiente comando:
      ```bash
      mariadb -u root -p NOMBRE_BDD < DIRECTORIO_ARCHIVO.SQL
Por ejemplo:
      ```bash
      “mariadb -u root -p sia2 < /home/taller/DockerLaravel/respaldo.sql”
Verifique la poblacion de la base de datos con el comando:
      ```bash
      SHOW TABLES;
### Configuracion del entorno de produccion
Conecte el servidor de base de datos con el proyecto siguiendo estos pasos:
1. Dirijase al directorio del proyecto con el comando:
      ```bash
      cd /DIRECTORIO_PROYECTO
   Por ejemplo: cd /var/www/SIA2_SII
2. Copie el archivo ".env.example" y llamelo ".env" con el siguiente comando:
      ```bash
      cp .env.example .env
3. Abra el archivo .env con el editor de texto de su preferencia. Dentro del archivo, ajuiste la configuracion de la base de datos:
Dentro del archivo ".env" usted vera algo similar a esto:
      ```bash
      APP_NAME=Laravel
      APP_ENV=local
      APP_KEY=
      APP_DEBUG=true
      APP_URL=http://localhost

      DB_CONNECTION=mysql
      DB_HOST=db
      DB_PORT=3306
      DB_DATABASE=laravel
      DB_USERNAME=laraveluser
      DB_PASSWORD=yourpassword
Entonces, debe cambiarlo de la siguiente forma:
      ```bash
      APP_NAME=Laravel
      APP_ENV=production
      APP_KEY=
      APP_DEBUG=true
      APP_URL=http://localhost

      DB_CONNECTION=MOTOR_BDD
      DB_HOST=IP_SERVIDOR_BDD
      DB_PORT=PUERTO_BDD
      DB_DATABASE=NOMBRE_BDD
      DB_USERNAME=USUARIO_BDD
      DB_PASSWORD=CREDENCIAL_USUARIO_BDD
### Uso y generacion de la llave de encriptacion en Laravel (APP_KEY)
Para finalizar, lo único que queda por hacer es generar la llave de encriptación de la aplicación de Laravel.
Para ello navegue al directorio raíz del proyecto con el comando:
      ```bash
      cd /DIRECTORIO_RAIZ_PROYECTO
      ```
Finalmente, genere la llave de encriptación con el comando:
      ```bash
      php artisan key:generate
Una vez hecho esto visite su sitio configurado previamente en un navegador:
http:/IP_SERVIDOR:PUERTO_TRANSPARENTADO/
Y utilice las credenciales de prueba que se encuentran en el inicio del archivo README.md