# 🛠️ Entorno de Desarrollo - Scripts de Instalación

Este repositorio contiene scripts automatizados para configurar un entorno de desarrollo completo en sistemas Linux (Ubuntu/Debian). Incluye herramientas esenciales para desarrollo, DevOps, y gestión de infraestructura.

## 📋 Tabla de Contenidos

- [🎯 Propósito](#-propósito)
- [🚀 Instalación Rápida](#-instalación-rápida)
- [📦 Herramientas Incluidas](#-herramientas-incluidas)
- [🔧 Uso del Makefile](#-uso-del-makefile)
- [📝 Scripts Individuales](#-scripts-individuales)
- [⚙️ Requisitos del Sistema](#️-requisitos-del-sistema)
- [🔍 Verificación de Instalación](#-verificación-de-instalación)
- [🛠️ Solución de Problemas](#️-solución-de-problemas)
- [📄 Licencia](#-licencia)

## 🎯 Propósito

Este proyecto automatiza la instalación de herramientas de desarrollo comunes, eliminando la necesidad de instalar manualmente cada herramienta. Es especialmente útil para:

- **Configuración rápida de nuevos equipos**
- **Entornos de desarrollo estandarizados**
- **Scripts de CI/CD para preparación de entornos**
- **Desarrolladores que necesitan un setup completo**

## 🚀 Instalación Rápida

### Opción 1: Instalar Todo (Recomendado)
```bash
# Clonar el repositorio
git clone <tu-repositorio>
cd install_environment

# Instalar todas las herramientas
make install-all
```

### Opción 2: Instalación Selectiva
```bash
# Ver todas las opciones disponibles
make help

# Instalar herramientas específicas
make docker pythonenv awscli
```

## 📦 Herramientas Incluidas

| Herramienta | Descripción | Script |
|-------------|-------------|---------|
| 🐳 **Docker** | Plataforma de contenedores | `install_docker.sh` |
| 🏗️ **Terraform** | Infraestructura como código | `install_terraform.sh` |
| 🏗️ **Terragrunt** | Wrapper para Terraform | `install_terragrunt.sh` |
| ☸️ **kubectl** | Cliente de Kubernetes | `install_kubectl.sh` |
| 🐍 **Python + virtualenv** | Entorno Python | `install_pythonenv.sh` |
| ☁️ **AWS CLI** | Cliente de línea de comandos de AWS | `install_awscli.sh` |
| 🤖 **Cursor AI** | Editor de código con IA | `install_cursorai.sh` |
| 🔐 **Pritunl** | Servidor VPN | `install_pritunl.sh` |

## 🔧 Uso del Makefile

El Makefile proporciona una interfaz simple y consistente para ejecutar todos los scripts de instalación.

### Comandos Principales

```bash
# Mostrar ayuda
make help

# Instalar todas las herramientas
make install-all

# Instalar herramientas individuales
make docker
make terraform
make pythonenv

# Instalar múltiples herramientas
make docker pythonenv awscli

# Verificar que todos los scripts existen
make check-scripts

# Limpiar archivos temporales
make clean
```

### Targets Disponibles

| Target | Descripción |
|--------|-------------|
| `help` | Muestra ayuda y comandos disponibles |
| `install-all` | Instala todas las herramientas |
| `docker` | Instala Docker |
| `terraform` | Instala Terraform |
| `terragrunt` | Instala Terragrunt |
| `kubectl` | Instala kubectl |
| `pythonenv` | Instala Python y virtualenv |
| `awscli` | Instala AWS CLI |
| `cursorai` | Instala Cursor AI |
| `pritunl` | Instala Pritunl |
| `clean` | Limpia archivos temporales |
| `check-scripts` | Verifica que todos los scripts existen |

## 📝 Scripts Individuales

### 🐳 Docker (`install_docker.sh`)
Instala Docker CE con repositorio oficial:
- Actualiza el sistema
- Instala dependencias necesarias
- Añade la clave GPG oficial de Docker
- Configura el repositorio oficial
- Instala Docker CE
- Añade el usuario al grupo docker

### 🏗️ Terraform (`install_terraform.sh`)
Instala Terraform desde el repositorio oficial de HashiCorp:
- Descarga la última versión estable
- Instala en `/usr/local/bin`
- Configura permisos de ejecución

### 🏗️ Terragrunt (`install_terragrunt.sh`)
Instala Terragrunt para gestionar configuraciones de Terraform:
- Descarga la última versión
- Instala en `/usr/local/bin`
- Configura permisos de ejecución

### ☸️ kubectl (`install_kubectl.sh`)
Instala kubectl para gestionar clusters de Kubernetes:
- Descarga la última versión estable
- Instala en `/usr/local/bin`
- Configura permisos de ejecución

### 🐍 Python Environment (`install_pythonenv.sh`)
Configura un entorno Python básico:
- Instala Python 3 y pip
- Instala virtualenv para entornos virtuales

### ☁️ AWS CLI (`install_awscli.sh`)
Instala AWS CLI para interactuar con servicios de AWS:
- Descarga el instalador oficial
- Instala AWS CLI v2
- Configura permisos de ejecución

### 🤖 Cursor AI (`install_cursorai.sh`)
Instala Cursor AI, editor de código con IA:
- Descarga la última versión
- Instala en `/usr/local/bin`
- Configura permisos de ejecución

### 🔐 Pritunl (`install_pritunl.sh`)
Instala Pritunl para servidor VPN:
- Configura repositorio oficial
- Instala Pritunl
- Configura servicios necesarios

## ⚙️ Requisitos del Sistema

### Sistema Operativo
- Ubuntu 18.04 o superior
- Debian 9 o superior
- Distribuciones basadas en Ubuntu/Debian

### Permisos
- Acceso de superusuario (sudo)
- Conexión a internet para descargas

### Espacio en Disco
- Mínimo 2GB de espacio libre
- Recomendado 5GB para todas las herramientas

## 🔍 Verificación de Instalación

Después de la instalación, puedes verificar que todo funciona correctamente:

```bash
# Verificar Docker
docker --version
docker run hello-world

# Verificar Terraform
terraform --version

# Verificar Terragrunt
terragrunt --version

# Verificar kubectl
kubectl version --client

# Verificar Python
python3 --version
pip3 --version

# Verificar AWS CLI
aws --version

# Verificar Cursor AI
cursor --version
```

## 🛠️ Solución de Problemas

### Error de Permisos
```bash
# Si tienes problemas de permisos
sudo chmod +x *.sh
```

### Script No Encontrado
```bash
# Verificar que todos los scripts existen
make check-scripts
```

### Problemas con Docker
```bash
# Reiniciar el servicio de Docker
sudo systemctl restart docker

# Verificar que el usuario está en el grupo docker
groups $USER
```

### Problemas con AWS CLI
```bash
# Configurar AWS CLI
aws configure
```

### Logs de Instalación
Los scripts muestran mensajes informativos durante la instalación. Si hay errores, revisa:
- Conexión a internet
- Permisos de sudo
- Espacio en disco disponible

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo `LICENSE` para más detalles.

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Para contribuir:

1. Fork el repositorio
2. Crea una rama para tu feature (`git checkout -b feature/nueva-herramienta`)
3. Commit tus cambios (`git commit -am 'Añadir nueva herramienta'`)
4. Push a la rama (`git push origin feature/nueva-herramienta`)
5. Crea un Pull Request

## 📞 Soporte

Si tienes problemas o preguntas:

1. Revisa la sección de [Solución de Problemas](#️-solución-de-problemas)
2. Abre un issue en el repositorio
3. Consulta la documentación oficial de cada herramienta

---

**¡Disfruta configurando tu entorno de desarrollo! 🚀**
