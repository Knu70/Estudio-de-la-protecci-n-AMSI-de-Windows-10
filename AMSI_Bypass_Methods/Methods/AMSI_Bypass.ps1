#########################################
# TFM - AMSI Bypass Tool
#
# Autor: Luis Díaz
#########################################

Function AMSI_Bypass
{
    Clear-Host
    runTool
}
Function runTool
{
    do
    {
        Write-Host
        Write-Host "+-+-+-+-+ +-+-+-+-+-+-+ +-+-+-+-+-+-+-+" -ForegroundColor Yellow
        Write-Host "|A|M|S|I| |B|y|p|a|s|s| |M|e|t|h|o|d|s|" -ForegroundColor Green
        Write-Host "+-+-+-+-+ +-+-+-+-+-+-+ +-+-+-+-+-+-+-+" -ForegroundColor Yellow
        Write-Host
        Write-Host "   [1] PowerShell Downgrade" -ForegroundColor Green
        Write-Host "   [2] Base64 Encoding" -ForegroundColor Green
        Write-Host "   [3] Hooking" -ForegroundColor Green
        Write-Host "   [4] Memory Patching" -ForegroundColor Green
        Write-Host "   [5] Forcing an Error" -ForegroundColor Green
        Write-Host "   [6] Registry Key Modification" -ForegroundColor Green
        Write-Host "   [7] DLL Hijacking" -ForegroundColor Green
        Write-Host "   [0] Exit" -ForegroundColor Green
        Write-Host 
        [int]$opc = read-Host "Enter an option" 
        write-host

        Switch($opc)
        { 
            1 
            {
                Write-Host
                Write-Host "[1] PowerShell Downgrade "
                .\Methods\Downgrade_PowerShell.ps1
                
                
            }

            2
            {
                Write-Host
                Write-Host "[2] Base64 Encoding"
                .\Methods\Base64_Encoding.ps1
                
            }
 
            3
            {
                Write-Host
                Write-Host "[3] Hooking"
                .\Methods\Hooking.ps1
            }
 
            4
            {
                Write-Host
                Write-Host "[4] Memory Patching"
                .\Methods\Memory_Patching.ps1
            }
 
            5
            {
                Write-Host
                Write-Host "[5] Forcing an Error"
                .\Methods\Forcing_an_Error.ps1
            }
 
            6
            {
                Write-Host
                Write-Host "[6] Registry Key Modification"
                .\Methods\Registry_Key_Modification.ps1
            }

            7
            {
                Write-Host;Write-Host "[7] DLL Hijacking"
                .\Methods\DLL_Hijacking.ps1
            }

            # [0] Bye...
            0 
            {
                Write-Host "Bye...";write-host;pause;Clear-Host;break
            }

            #
            default 
            {
                Clear-Host
            }
        }

    }while($opc -ne 0)
}


AMSI_Bypass