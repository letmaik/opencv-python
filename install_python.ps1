$exePath = "$env:TEMP\python-installer.exe"

Write-Host "Downloading $env:PYTHON_URL ..."
(New-Object Net.WebClient).DownloadFile($env:PYTHON_URL, $exePath)
Write-Host "Installing..."
cmd /c start /wait $exePath /quiet TargetDir="$env:PYTHON" Shortcuts=0 Include_launcher=0 InstallLauncherAllUsers=0 Include_debug=1
Write-Host "Python ${req_ver} installed to $env:PYTHON"

$py_exe = "${env:PYTHON}\Python.exe"
echo "$(& $py_exe --version 2> $null)"
