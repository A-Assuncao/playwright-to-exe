# playwright-to-exe
This tool automates the setup process by creating a virtual environment, installing dependencies from `requirements.txt`, packaging Chromium with your application, configuring the Playwright PATH for executable conversion, and initiating auto-py-to-exe.

## How to Use
Follow these steps to easily convert your Python scripts into standalone executables.

### Step 1: Preparation
Right-click [here](https://raw.githubusercontent.com/A-Assuncao/playwright-to-exe/main/requirements.txt) and select "Save link as..." to download the `requirements.txt` file. Choose the empty directory where you wish to save it.

### Step 2: Configure Dependencies
Edit the `requirements.txt` file by adding any additional libraries your project requires under section "2". IMPORTANT: Do not remove section "1". Save the file after editing.

### Step 3: Open PowerShell
Navigate to your project folder and open PowerShell in that location.

### Step 4: Run the Installation Command
Paste the following command into PowerShell and execute it:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex "&{$((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/A-Assuncao/playwright-to-exe/main/setup_install_venv.ps1'))}"
