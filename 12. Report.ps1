
$Computers= Get-Content "C:\Users\vkumar15\Desktop\Blocking\Servers.txt"

$test = 1


$HTML = '<style type="text/css">  
    #Header{font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;width:100%;border-collapse:collapse;}  
    #Header td, #Header th {font-size:14px;border:1px solid #98bf21;padding:3px 7px 2px 7px;}  
    #Header th {font-size:14px;text-align:left;padding-top:5px;padding-bottom:4px;background-color:#A7C942;color:#fff;}  
    #Header tr.alt td {color:#000;background-color:#EAF2D3;}  
    </Style>'

  $HTML += "<HTML><BODY><Table border=1 cellpadding=0 cellspacing=0 width=100% id=Header>  
        <TR>  
            <TH><B>Server Name</B></TH>  
            <TH><B>BlockingSessionId</TH>
            <TH><B>BlockedBy</TH>
            <TH><B>DB Name</B></TH>  
            <TH><B>Start_Time</B></TH> 
            <TH><B>HoursTaken</B></TH> 
            <TH><B>MinuteTaken</B></TH> 
            <TH><B>Command</B></TH> 
         </TR>" 

$falg = 0

foreach($Servers in $Computers) 
    { 
        #$Query =   'select @@servername as Servername, blocking_session_id BlockingSessionId, block_user_name ,db_name(dbid) as DBName, Start_Time,DATEDIFF(Minute,start_time,getdate())/60 as HoursTaken,  DATEDIFF(Minute,start_time,getdate()) as MinuteTaken,Command   from sys.dm_exec_requests cross apply sys.dm_exec_sql_text (sql_handle) WHERE blocking_session_id <> 0 order by spid desc '
        #$Result = Invoke-Sqlcmd ($Query) -ServerInstance $Servers 
        #$Result 
         #   foreach ($Item in $Result) 
          #  { 

                    $ServerNames ="1" #$Item.Servername 
                    $BlockingSessionId = "1"#$Item.BlockingSessionId 
                    $DbName ="1" #$Item.DBName 
                    $Start_Time = "1"#$Item.Start_Time 
                    $HoursTaken ="1" #$Item.HoursTaken 
                    $MinuteTaken ="1" #$Item.MinuteTaken 
                    $Command ="2" #$Item.Command 
                    $block_user_name = "abcd" # $Item.block_user_name

                    #if($BlockingSessionId -ne "")
                    if($test -eq 1)
                    {
                            $HTML += "<TR>  
                            <TD>$($ServerNames)</TD>  
                            <TD>$($BlockingSessionId)</TD>  
                            <TD>BlockedBy</TD>
                            <TD>$($DbName)</TD>    
                            <TD>$($Start_Time)</TD>      
                            <TD>$($HoursTaken)</TD>    
                            <TD>$($MinuteTaken)</TD>    
                            <TD>$($Command)</TD>      
                           </TR>"      
                           $falg =1
                            
                }
            #}      
    } 
  $HTML += "</Table></BODY></HTML><BR><BR>"  
 


  if($falg -eq 1){

    $OutputFile = "C:/Users/vkumar15/Desktop/Blocking/BlockingOutput.htm"
    $HTML | Out-File $OutputFile 

  }
else{
    Write-Host "not blockage"
}