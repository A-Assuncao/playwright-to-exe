# playwright-to-exe
Encapsula o chromium, muda o PATH do Playwright para que arquivos .py possam ser transformados em executáveis.

MODO DE USO:

1- Baixe o arquivo em formato zip;
2- Abra o PowerShell como administrador;
3- Mude as políticas de execução de scripts no PowerShell para "Unrestricted" (use com cuidado);
   Recomendo o uso do código "Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process" (copie o que está entre aspas e clique com o botão direito no prompt do PoweShell);
4- Use o comando "./setup_venv.ps1" no prompt do PowerShell
