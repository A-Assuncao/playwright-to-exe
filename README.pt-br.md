# playwright-to-exe

<p align="center">
  <img src="https://playwright.dev/img/playwright-logo.svg" alt="Playwright-to-exe Logo" width="120"/>
</p>

**playwright-to-exe** é uma ferramenta que automatiza o processo de transformação de scripts Python que utilizam a biblioteca Playwright em executáveis standalone (.exe) para Windows, facilitando a distribuição de aplicações de automação web sem necessidade de instalação de dependências extras.

## Sumário

- [Principais Recursos](#principais-recursos)
- [Requisitos](#requisitos)
- [Como Utilizar](#como-utilizar)
  - [Passo 1: Preparação](#passo-1-preparação)
  - [Passo 2: Configuração de Dependências](#passo-2-configuração-de-dependências)
  - [Passo 3: Executar PowerShell](#passo-3-executar-powershell)
  - [Passo 4: Executar o Comando de Instalação](#passo-4-executar-o-comando-de-instalação)
- [Funcionamento Interno](#funcionamento-interno)
- [Solução de Problemas](#solução-de-problemas)
- [Contribuição](#contribuição)
- [Créditos](#créditos)
- [Licença](#licença)
- [Outros Idiomas](#outros-idiomas)

## Principais Recursos

- 🚀 **Automação Completa** - Processo automatizado do início ao fim
- 🔧 **Configuração Simplificada** - Apenas adicione suas dependências ao arquivo requirements.txt
- 📦 **Empacotamento do Chromium** - Inclui o navegador Chromium no executável final
- 🔄 **Ambiente Virtual** - Cria e configura um ambiente virtual Python isolado
- ⚙️ **Configuração de PATH** - Ajusta automaticamente as variáveis de ambiente do Playwright
- 🖥️ **Interface Gráfica** - Utiliza a interface do auto-py-to-exe para personalização final

## Requisitos

- [Python 3.8+](https://www.python.org/downloads/) (recomendado Python 3.10 ou superior)
- Sistema operacional Windows
- Permissões de administrador para instalação de pacotes

## Como Utilizar

### Passo 1: Preparação

Clique com o botão direito [aqui](https://raw.githubusercontent.com/A-Assuncao/playwright-to-exe/main/requirements.txt) e selecione "Salvar link como..." para baixar o arquivo `requirements.txt`. Escolha o diretório vazio onde deseja salvá-lo.

### Passo 2: Configuração de Dependências

1. Abra o arquivo `requirements.txt` em um editor de texto
2. Adicione quaisquer bibliotecas adicionais que seu projeto necessita na seção "2"
3. Salve o arquivo após editar

> **IMPORTANTE**: Não remova ou modifique as bibliotecas listadas na seção "1".

### Passo 3: Executar PowerShell

Navegue até a pasta vazia onde você salvou o arquivo `requirements.txt` no passo "1" e abra o PowerShell nesse local:

1. Clique com o botão direito dentro da pasta mantendo a tecla Shift pressionada
2. Selecione "Abrir janela do PowerShell aqui"

### Passo 4: Executar o Comando de Instalação

Cole o seguinte comando no PowerShell e execute-o:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex "&{$((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/A-Assuncao/playwright-to-exe/main/setup_install_venv.ps1'))}"
```

Após a execução, a interface do auto-py-to-exe será aberta, onde você poderá configurar as opções finais para geração do executável.

## Funcionamento Interno

O script realiza as seguintes operações automaticamente:

1. **Criação de ambiente virtual**: Isola as dependências do projeto
2. **Instalação de dependências**: Instala o Playwright e suas dependências
3. **Configuração do PATH do Playwright**: Define a variável de ambiente `PLAYWRIGHT_BROWSERS_PATH="0"`
4. **Instalação do Chromium**: Baixa e configura o navegador Chromium
5. **Inicialização do auto-py-to-exe**: Abre a interface para finalizar a configuração

## Solução de Problemas

| Problema | Solução |
|----------|---------|
| "Não é possível executar scripts" | Execute `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass` antes do comando principal |
| Falha na instalação do Playwright | Verifique sua conexão com a internet e tente novamente |
| Erro ao empacotar arquivos grandes | Aumente o limite de memória no auto-py-to-exe nas configurações avançadas |
| Executável gerado não abre | Verifique se todas as dependências estão listadas no requirements.txt |

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para:

1. Abrir Issues reportando bugs ou sugerindo melhorias
2. Enviar Pull Requests com correções ou novas funcionalidades
3. Melhorar a documentação ou adicionar exemplos

## Créditos

Esta solução foi inspirada em um guia passo a passo criado por [Animesh Singh](https://medium.com/@animeshsingh161) no [Medium.com](https://medium.com). Você pode ler o guia original [aqui](https://medium.com/@animeshsingh161/how-to-convert-a-python-playwright-script-into-an-executable-app-playwright-with-python-b61d8ff0ca64). Agradecimentos a Animesh Singh por fornecer as instruções detalhadas que formaram a base deste processo automatizado!

## Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## Outros Idiomas

- [Inglês (README principal)](README.md)

---

**Desenvolvido com 💻 e Python.** 