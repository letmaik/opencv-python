$exePath = "$env:TEMP\python-installer.exe"

Write-Host "Downloading $env:PYTHON_URL"
(New-Object Net.WebClient).DownloadFile($env:PYTHON_URL, $exePath)
Write-Host "Installing..."
Write-Host "cmd /c start /wait $exePath /quiet TargetDir=$env:PYTHON Shortcuts=0 Include_launcher=0 InstallLauncherAllUsers=0 Include_debug=1"
cmd /c start /wait $exePath /quiet TargetDir="$env:PYTHON" Shortcuts=0 Include_launcher=0 InstallLauncherAllUsers=0 Include_debug=1

ls $env:PYTHON
