# playwright-to-exe

<p align="center">
  <img src="https://playwright.dev/img/playwright-logo.svg" alt="Playwright-to-exe Logo" width="120"/>
</p>

**playwright-to-exe** is a tool that automates the process of transforming Python scripts that use the Playwright library into standalone executables (.exe) for Windows, making it easier to distribute web automation applications without requiring additional dependencies.

## Summary

- [Key Features](#key-features)
- [Requirements](#requirements)
- [How to Use](#how-to-use)
  - [Step 1: Preparation](#step-1-preparation)
  - [Step 2: Configure Dependencies](#step-2-configure-dependencies)
  - [Step 3: Run PowerShell](#step-3-run-powershell)
  - [Step 4: Run the Installation Command](#step-4-run-the-installation-command)
- [Internal Operation](#internal-operation)
- [Troubleshooting](#troubleshooting)
- [Contribution](#contribution)
- [Credits](#credits)
- [License](#license)
- [Other Languages](#other-languages)

## Key Features

- 🚀 **Complete Automation** - Automated process from start to finish
- 🔧 **Simplified Configuration** - Just add your dependencies to the requirements.txt file
- 📦 **Chromium Packaging** - Includes the Chromium browser in the final executable
- 🔄 **Virtual Environment** - Creates and configures an isolated Python virtual environment
- ⚙️ **PATH Configuration** - Automatically adjusts Playwright environment variables
- 🖥️ **Graphical Interface** - Uses the auto-py-to-exe interface for final customization

## Requirements

- [Python 3.8+](https://www.python.org/downloads/) (Python 3.10 or higher recommended)
- Windows operating system
- Administrator permissions for package installation

## How to Use

### Step 1: Preparation

Right-click [here](https://raw.githubusercontent.com/A-Assuncao/playwright-to-exe/main/requirements.txt) and select "Save link as..." to download the `requirements.txt` file. Choose an empty directory where you want to save it.

### Step 2: Configure Dependencies

1. Open the `requirements.txt` file in a text editor
2. Add any additional libraries your project requires in section "2"
3. Save the file after editing

> **IMPORTANT**: Do not remove or modify the libraries listed in section "1".

### Step 3: Run PowerShell

Navigate to the empty folder where you saved the `requirements.txt` file in step "1" and open PowerShell in that location:

1. Right-click inside the folder while holding the Shift key
2. Select "Open PowerShell window here"

### Step 4: Run the Installation Command

Paste the following command into PowerShell and execute it:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex "&{$((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/A-Assuncao/playwright-to-exe/main/setup_install_venv.ps1'))}"
```

After execution, the auto-py-to-exe interface will open, where you can configure the final options for generating the executable.

## Internal Operation

The script automatically performs the following operations:

1. **Virtual environment creation**: Isolates project dependencies
2. **Dependencies installation**: Installs Playwright and its dependencies
3. **Playwright PATH configuration**: Sets the `PLAYWRIGHT_BROWSERS_PATH="0"` environment variable
4. **Chromium installation**: Downloads and configures the Chromium browser
5. **auto-py-to-exe initialization**: Opens the interface for final configuration

## Troubleshooting

| Problem | Solution |
|---------|----------|
| "Cannot execute scripts" | Run `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass` before the main command |
| Playwright installation failure | Check your internet connection and try again |
| Error when packaging large files | Increase the memory limit in auto-py-to-exe in advanced settings |
| Generated executable doesn't open | Check if all dependencies are listed in requirements.txt |

## Contribution

Contributions are welcome! Feel free to:

1. Open Issues reporting bugs or suggesting improvements
2. Send Pull Requests with fixes or new features
3. Improve documentation or add examples

## Credits

This solution was inspired by a step-by-step guide created by [Animesh Singh](https://medium.com/@animeshsingh161) on [Medium.com](https://medium.com). You can read the original guide [here](https://medium.com/@animeshsingh161/how-to-convert-a-python-playwright-script-into-an-executable-app-playwright-with-python-b61d8ff0ca64). Many thanks to Animesh Singh for providing the detailed instructions that formed the basis for this automated process!

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Other Languages

- [Portuguese (Brazil)](README.pt-br.md)

---

**Developed with 💻 and Python.**
