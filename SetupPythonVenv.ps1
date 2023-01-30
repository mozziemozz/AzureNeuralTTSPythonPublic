# Get Version
$checkPythonVersion = py -3 --version

if (!$checkPythonVersion) {

    Write-Warning "Python was not found on your system. Please install it."
    exit

}

# Create virtual environment
py -3 -m venv .venv
.venv\scripts\activate

# Update Python
python.exe -m pip install --upgrade pip

# Install Azure Cognitive Services
pip install azure-cognitiveservices-speech