# User Login Module

Set of exercises to work with different test doubles :)

### Ejecución con Docker:

```bash
# Construir la imagen
docker build -t user-login-module-php .

# Entrar al contenedor
# Al entrar, si no existe vendor/, se instala automáticamente
docker run -it -v "$(pwd)":/app user-login-module-php bash

# Ejecutar los tests dentro del contenedor
vendor/bin/phpunit
```

### Ejecución local (requiere PHP 8.0+):

```bash
composer install
vendor/bin/phpunit
```
