@echo off
WHERE /q choco
IF ERRORLEVEL 1 (
	@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
	refreshenv
)
WHERE /q pandoc
IF ERRORLEVEL 1 (
	cinst pandoc -y
	refreshenv
)
pandoc main.tex --bibliography=zdroje.bib --reference-doc=reference.docx -o main.docx
pause
