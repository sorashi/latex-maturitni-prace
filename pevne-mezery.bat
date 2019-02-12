@echo off
where /q vlna32
IF ERRORLEVEL 1 (
	echo Soubor vlna32 nenalezen. Prosim stahnete ho z webu http://ftp.linux.cz/pub/tex/local/cstug/olsak/vlna/oldbin/
	pause
	exit /B 1
)
vlna32 -l -m -n -v KkSsVvZzOoUuAIai text.tex
pause
