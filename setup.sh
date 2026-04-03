#!/bin/bash
#
# Setup Script - Metodos de Programacao
# Configura o ambiente de desenvolvimento
#
# Uso: ./setup.sh
#

set -e  # Sai imediatamente se um comando falhar

# Diretorio do projeto
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Funcoes auxiliares
print_header() {
    echo ""
    echo -e "${BLUE}============================================================================${NC}"
    echo -e "${BLUE}  $1${NC}"
    echo -e "${BLUE}============================================================================${NC}"
    echo ""
}

print_step() {
    echo -e "${CYAN}  $1${NC}"
}

print_success() {
    echo -e "${GREEN}  $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}  $1${NC}"
}

print_error() {
    echo -e "${RED}  $1${NC}"
}

# Banner
echo ""
echo -e "${BLUE}+--------------------------------------------------------------+${NC}"
echo -e "${BLUE}|${NC}         ${GREEN}SETUP - Metodos de Programacao${NC}                       ${BLUE}|${NC}"
echo -e "${BLUE}+--------------------------------------------------------------+${NC}"
echo ""

cd "$PROJECT_DIR"

# ============================================================================
# 1. Verificar e instalar uv
# ============================================================================
print_header "1/3 - Verificando instalacao do uv"

if command -v uv &> /dev/null; then
    UV_VERSION=$(uv --version)
    print_success "uv ja esta instalado: $UV_VERSION"
else
    print_step "uv nao encontrado. Instalando..."

    curl -LsSf https://astral.sh/uv/install.sh | sh

    export PATH="$HOME/.local/bin:$PATH"

    if command -v uv &> /dev/null; then
        UV_VERSION=$(uv --version)
        print_success "uv instalado com sucesso: $UV_VERSION"
        print_warning "Adicione ao seu .bashrc ou .zshrc: export PATH=\"\$HOME/.local/bin:\$PATH\""
    else
        print_error "Falha ao instalar uv. Instale manualmente: https://docs.astral.sh/uv/"
        exit 1
    fi
fi

# ============================================================================
# 2. Criar ambiente virtual e instalar dependencias (via uv sync)
# ============================================================================
print_header "2/3 - Configurando ambiente Python (via uv)"

print_step "Executando uv sync (cria venv, gera lock, instala dependencias)..."

uv sync --extra dev

print_success "Ambiente virtual criado e dependencias instaladas"

# ============================================================================
# 3. Mensagem final
# ============================================================================
print_header "3/3 - Setup concluido!"

echo -e "${GREEN}  O ambiente foi configurado com sucesso!${NC}"
echo ""
echo -e "${CYAN}  Para ativar o ambiente virtual:${NC}"
echo -e "    ${GREEN}source .venv/bin/activate${NC}"
echo ""
echo -e "${CYAN}  Para iniciar o Jupyter:${NC}"
echo -e "    ${GREEN}uv run jupyter notebook${NC}"
echo ""
echo -e "${CYAN}  Comandos uteis:${NC}"
echo -e "    ${GREEN}uv run task sort${NC}      - Organizar imports"
echo -e "    ${GREEN}uv run task format${NC}    - Formatar codigo"
echo -e "    ${GREEN}uv run task lint${NC}      - Verificar qualidade do codigo"
echo -e "    ${GREEN}uv run task fix${NC}       - Corrigir problemas automaticamente"
echo -e "    ${GREEN}uv run task test${NC}      - Rodar testes com cobertura"
echo -e "    ${GREEN}uv run task check${NC}     - lint + test"
echo -e "    ${GREEN}uv run task clean${NC}     - Limpar cache e artefatos"
echo ""
echo -e "${CYAN}  Versoes instaladas:${NC}"
echo -e "    Python: ${GREEN}$(.venv/bin/python --version 2>/dev/null | cut -d' ' -f2 || echo 'nao encontrado')${NC}"
echo -e "    uv:     ${GREEN}$(uv --version 2>/dev/null || echo 'nao encontrado')${NC}"
echo ""
