@echo off
type splash.txt

color 0F

echo .
echo ------------------------------- Script by Ruuka ------------------------------
echo                          https://github.com/Ruuka6009
echo .
echo ------------------------------- Tool by Morilli ------------------------------
echo                           https://github.com/Morilli
echo .

set /p MANIFEST="Manifest link or file: "
set /p FOLDER="Output folder: "
set /p THREADS="Number of threads: "

echo .
echo ------------------------------ Current settings -----------------------------
echo .
echo -Manifest: %MANIFEST%
echo -Will output at: %FOLDER%
echo -Using %THREADS% threads

echo .

timeout /t 3 /nobreak

cls
color 0E
echo --------------------------- Downloading game files --------------------------
cmd.exe /c ManifestDownloader.exe %MANIFEST% -b https://valorant.secure.dyn.riotcdn.net/channels/public/bundles -o %FOLDER% -t %THREADS%
cls
color 0A

echo .
echo The game as been downloaded successfully! :)
echo .

pause