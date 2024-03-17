# Nome do ambiente virtual
$VENV_NAME = "venv"

# Criando o ambiente virtual
python -m venv $VENV_NAME

# Ativando o ambiente virtual
$activateScript = ".\" + $VENV_NAME + "\Scripts\Activate.ps1"
. $activateScript

# Instalando dependências do arquivo requirements.txt
pip install -r requirements.txt

# Mudando o PATCH do caminho do navegador para o Playwright
$env:PLAYWRIGHT_BROWSERS_PATH="0"
playwright install chromium
auto-py-to-exe
