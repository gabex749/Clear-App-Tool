echo Fermeture de toutes les apps...

tasklist /fo csv /nh > "%temp%\tasklist.csv"

for /f "tokens=2 delims=," %%i in ('type "%temp%\tasklist.csv"') do (
    taskkill /f /pid %%i >nul 2>&1
)

echo Opération terminée !

pause
