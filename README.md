# playwright-to-exe
Cria um ambiente virtual, instala dependências de requeriments.txt, encapsula o chromium, muda o PATH do Playwright para que arquivos .py possam ser transformados em executáveis e executa auto-py-exe.

## How to use
1 - Baixe o arquivo requeriments.txt e coloque dentro de uma pasta vazia;

2- Edite o arquivo requeriments.txt adicionando no campo "2" as bibliotecas que seu código precisa (não apague o campo "1"), lembre-se de salvar;

3- Abra o PowerShell dentro da pasta escolhida;

4- Cole o código:
```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex "&{$((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/A-Assuncao/playwright-to-exe/main/setup_install_venv.ps1'))} global"
```
