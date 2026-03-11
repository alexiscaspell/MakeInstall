# Makefile para instalación de herramientas de desarrollo
# Uso: make <target>

.PHONY: help install-all docker terragrunt pritunl kubectl pythonenv awscli cursorai terraform ssh clean

# Target por defecto - muestra la ayuda
help:
	@echo "Makefile para instalación de herramientas de desarrollo"
	@echo ""
	@echo "Targets disponibles:"
	@echo "  help        - Muestra esta ayuda"
	@echo "  install-all - Instala todas las herramientas"
	@echo "  docker      - Instala Docker"
	@echo "  terragrunt  - Instala Terragrunt"
	@echo "  pritunl     - Instala Pritunl"
	@echo "  kubectl     - Instala kubectl"
	@echo "  pythonenv   - Instala Python y virtualenv"
	@echo "  awscli      - Instala AWS CLI"
	@echo "  cursorai    - Instala Cursor AI"
	@echo "  terraform   - Instala Terraform"
	@echo "  ssh         - Instala y habilita SSH"
	@echo "  clean       - Limpia archivos temporales"
	@echo ""
	@echo "Ejemplos:"
	@echo "  make install-all    # Instala todo"
	@echo "  make docker         # Solo instala Docker"
	@echo "  make pythonenv awscli # Instala Python y AWS CLI"

# Instala todas las herramientas
install-all: docker terragrunt pritunl kubectl pythonenv awscli cursorai terraform ssh
	@echo "✅ Todas las herramientas han sido instaladas"

# Instala Docker
docker:
	@echo "🐳 Instalando Docker..."
	@chmod +x install_docker.sh
	@./install_docker.sh
	@echo "✅ Docker instalado correctamente"

# Instala Terragrunt
terragrunt:
	@echo "🏗️  Instalando Terragrunt..."
	@chmod +x install_terragrunt.sh
	@./install_terragrunt.sh
	@echo "✅ Terragrunt instalado correctamente"

# Instala Pritunl
pritunl:
	@echo "🔐 Instalando Pritunl..."
	@chmod +x install_pritunl.sh
	@./install_pritunl.sh
	@echo "✅ Pritunl instalado correctamente"

# Instala kubectl
kubectl:
	@echo "☸️  Instalando kubectl..."
	@chmod +x install_kubectl.sh
	@./install_kubectl.sh
	@echo "✅ kubectl instalado correctamente"

# Instala Python y virtualenv
pythonenv:
	@echo "🐍 Instalando Python y virtualenv..."
	@chmod +x install_pythonenv.sh
	@./install_pythonenv.sh
	@echo "✅ Python y virtualenv instalados correctamente"

# Instala AWS CLI
awscli:
	@echo "☁️  Instalando AWS CLI..."
	@chmod +x install_awscli.sh
	@./install_awscli.sh
	@echo "✅ AWS CLI instalado correctamente"

# Instala Cursor AI
cursorai:
	@echo "🤖 Instalando Cursor AI..."
	@chmod +x install_cursorai.sh
	@./install_cursorai.sh
	@echo "✅ Cursor AI instalado correctamente"

# Instala Terraform
terraform:
	@echo "🏗️  Instalando Terraform..."
	@chmod +x install_terraform.sh
	@./install_terraform.sh
	@echo "✅ Terraform instalado correctamente"

# Instala y habilita SSH
ssh:
	@echo "🔑 Instalando y habilitando SSH..."
	@chmod +x install_ssh.sh
	@./install_ssh.sh
	@echo "✅ SSH instalado y habilitado correctamente"

# Limpia archivos temporales
clean:
	@echo "🧹 Limpiando archivos temporales..."
	@find . -name "*.tmp" -delete
	@find . -name "*.log" -delete
	@echo "✅ Limpieza completada"

# Verifica que los scripts existen
check-scripts:
	@echo "🔍 Verificando que todos los scripts existen..."
	@test -f install_docker.sh || (echo "❌ install_docker.sh no encontrado" && exit 1)
	@test -f install_terragrunt.sh || (echo "❌ install_terragrunt.sh no encontrado" && exit 1)
	@test -f install_pritunl.sh || (echo "❌ install_pritunl.sh no encontrado" && exit 1)
	@test -f install_kubectl.sh || (echo "❌ install_kubectl.sh no encontrado" && exit 1)
	@test -f install_pythonenv.sh || (echo "❌ install_pythonenv.sh no encontrado" && exit 1)
	@test -f install_awscli.sh || (echo "❌ install_awscli.sh no encontrado" && exit 1)
	@test -f install_cursorai.sh || (echo "❌ install_cursorai.sh no encontrado" && exit 1)
	@test -f install_terraform.sh || (echo "❌ install_terraform.sh no encontrado" && exit 1)
	@test -f install_ssh.sh || (echo "❌ install_ssh.sh no encontrado" && exit 1)
	@echo "✅ Todos los scripts están presentes" 