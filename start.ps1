# TabbyAPI - Inicia o servidor com Qwen3.6-27B
Push-Location $PSScriptRoot

# Ativa o ambiente virtual
if (Test-Path "venv\Scripts\Activate.ps1") {
    . .\venv\Scripts\Activate.ps1
} else {
    Write-Host "Virtual env nao encontrado. Execute start.bat primeiro." -ForegroundColor Red
    pause
    exit 1
}

Write-Host "Iniciando TabbyAPI..." -ForegroundColor Green
python start.py @args

Pop-Location