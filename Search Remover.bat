:SearchRemover
cls
color D
echo Removing Search...
set "SearchFileToDelete1=C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\SearchHost.exe"
set "SearchFileToDelete2=C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\StartMenuExperienceHost.exe"
set "SearchFileToDelete3=C:\Windows\SystemApps\ShellExperienceHost_cw5n1h2txyewy\ShellExperienceHost.exe"
set "SearchFileToDelete4=C:\Windows\System32\taskhostw.exe"
if exist "%SearchFileToDelete1%" (
    echo.
    echo Taking ownership of the file.
    takeown /F "%SearchFileToDelete1%" >nul 2>&1
    echo Adjusting permissions.
    icacls "%SearchFileToDelete1%" /grant administrators:F >nul 2>&1
    echo Removing SearchHost.exe.
    del "%SearchFileToDelete1%" /f /q
    echo File deleted successfully.
) else (
    echo File not found: %SearchFileToDelete1%.
)
if exist "%SearchFileToDelete2%" (
    echo.
    echo Taking ownership of the file.
    takeown /F "%SearchFileToDelete2%" >nul 2>&1
    echo Adjusting permissions.
    icacls "%SearchFileToDelete2%" /grant administrators:F >nul 2>&1
    echo Removing StartMenuExperienceHost.exe.
    del "%SearchFileToDelete2%" /f /q
    echo File deleted successfully.
) else (
    echo File not found: %SearchFileToDelete2%.
)
if exist "%SearchFileToDelete3%" (
    echo.
    echo Taking ownership of the file.
    takeown /F "%SearchFileToDelete3%" >nul 2>&1
    echo Adjusting permissions.
    icacls "%SearchFileToDelete3%" /grant administrators:F >nul 2>&1
    echo Removing ShellExperienceHost.exe.
    del "%SearchFileToDelete3%" /f /q
    echo File deleted successfully.
) else (
    echo File not found: %SearchFileToDelete3%.
)
if exist "%SearchFileToDelete4%" (
    echo.
    echo Taking ownership of the file.
    takeown /F "%SearchFileToDelete4%" >nul 2>&1
    echo Adjusting permissions.
    icacls "%SearchFileToDelete4%" /grant administrators:F >nul 2>&1
    echo Removing taskhostw.exe.
    del "%SearchFileToDelete4%" /f /q
    echo File deleted successfully.
) else (
    echo File not found: %SearchFileToDelete4%.
)
timeout 5 > nul