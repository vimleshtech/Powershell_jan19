#How to save result in file (tabular format), .csv/xls, .txt etc.
#overwrite 
Get-Process | Out-File -filepath C:\Users\vkumar15\Desktop\process.txt

#no overwrite  
Get-Process | Out-File C:\Users\vkumar15\Desktop\process1.txt -NoClobber

##in ASCII  with fix width 
$A = Get-Process
Out-File -FilePath C:\Users\vkumar15\Desktop\process2.txt -InputObject $A -Encoding ASCII -Width 50


#show in grid format
Get-Process | Out-GridView


#with format 
Get-Process | Select-Object -Property Name, WorkingSet, PeakWorkingSet | Sort-Object -Property WorkingSet -Descending | Out-GridView


#get computer/host/server name 
HostName

#
Get-Process -ComputerName "LH7U05CG7300QJQ" | ogv -Title "Processes - Server01"

##############################################
#### AD : ActiveDirectory (Installation)
##############################################









