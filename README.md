# playwright-to-exe
This tool automates the setup process to transform Python files that use the Playwright library into a onefile executable for Windows (.exe). It creates a virtual environment, installs dependencies from `requirements.txt`, packages Chromium with your application, configures the Playwright PATH for executable conversion, and initiates auto-py-to-exe.

## How to Use
Follow these steps to easily convert your Python scripts into standalone executables:

## Step 1: Preparation
Right-click [here](https://raw.githubusercontent.com/A-Assuncao/playwright-to-exe/main/requirements.txt) and select "Save link as..." to download the `requirements.txt` file. Choose the empty directory where you wish to save it.

## Step 2: Configure Dependencies
1. Edit the `requirements.txt` file by adding any additional libraries your project requires under section "2";
2. Save the file after editing.
#### IMPORTANT: Do not remove section "1".

## Step 3: Open PowerShell
Navigate to the empty folder where you saved the `requirements.txt` file in step "1" and open PowerShell in that location.

## Step 4: Run the Installation Command
Paste the following command into PowerShell and execute it:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex "&{$((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/A-Assuncao/playwright-to-exe/main/setup_install_venv.ps1'))}"
```

## Credits
This solution was inspired by a step-by-step guide created by [Animesh Singh](https://medium.com/@animeshsingh161) on [Medium.com](https://medium.com). You can read the original guide [here](https://medium.com/@animeshsingh161/how-to-convert-a-python-playwright-script-into-an-executable-app-playwright-with-python-b61d8ff0ca64). Many thanks to Animesh Singh for providing the detailed instructions that formed the basis for this automated process!
