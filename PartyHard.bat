SET foo = 0

:a

echo %foo%
set /A foo=%foo%+1

START "" X:\"Program Files (x86)"\Steam\steamapps\common\"Party Hard"\PartyHardGame.exe
timeout /t 10
taskkill /f /im "PartyHardGame.exe"

IF "%foo%" EQU "99" GOTO end
GOTO a

:end
pause
exit 0
