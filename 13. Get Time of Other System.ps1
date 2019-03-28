##
#Use Windows PowerShell remoting, and the Invoke-Command cmdlet to run Get-Date.

invoke-command -ComputerName dc1 -ScriptBlock {get-date} 
#A shorter version of this command is shown here:  --or 
icm dc1 {get-date}


foreach(){

    invoke-command -ComputerName $coputer -ScriptBlock {Restart-Computer} 

}
##scrp
function Get-RemoteDate{ 
    
    [CmdletBinding()] 
    param( 
            [Parameter(Mandatory=$True, 
                   ValueFromPipeLine=$True, 
                   ValueFromPipeLineByPropertyName=$True,  
                   HelpMessage="ComputerName or IP Address to query via WMI")] 
            [string[]]$ComputerName 
    ) 
 
    foreach($computer in $computerName) 
        { 
 
            $timeZone=Get-WmiObject -Class win32_timezone -ComputerName $computer 
            $localTime = Get-WmiObject -Class win32_localtime -ComputerName $computer 
            $output =@{'ComputerName' = $localTime.__SERVER; 
                    'Time Zone' = $timeZone.Caption; 
                    'Current Time' = (Get-Date -Day $localTime.Day -Month $localTime.Month); 
                   } 
            
            $object = New-Object -TypeName PSObject -Property $output 

            Write-Output $object 
 
        } 
 
        }



##
#remote machine date 

invoke-command -ComputerName dc1 -ScriptBlock {

get-date
Get-Alias


}



function script1{

}


function script2{

}


function script3{

}



function script4{

}



function startup{
    
    script1
    #script2
    script3
    #script4
}


##html report : html is hypertext markup language 
#file should be saved with .htm or .html extension 

 
