#############################################
########## File and folder handling #########
#############################################

Get-ChildItem -Force "C:\Users\vkumar15\Documents\Training\Training\PowerShell\"

#with recusive : show nester files and folder 
Get-ChildItem -Force  "C:\Users\vkumar15\Documents\Training\Training\PowerShell\" -Recurse

#copy file from one folder to other folder 
Copy-Item -Path "C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\Function.txt" -Destination "C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\Sandbox\"

Copy-Item -Path "C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\Function.txt" -Destination "C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\Sandbox\"  -Force

#COPY ALL ITEMS FROM one folder and paste in other folder 
Copy-Item C:\temp\test1 -Recurse c:\temp\DeleteMe

#move item 
Move-Item -Path "C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\Function.txt" -Destination "C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\Sandbox\"


#with filter (all the text file)
Copy-Item -Filter *.txt -Path c:\data -Recurse -Destination c:\temp\text


Copy-Item -Filter *.docx -Path c:\data -Recurse -Destination c:\temp\text

Copy-Item -Filter abcd.* -Path c:\data -Recurse -Destination c:\temp\text



#create new folder 
New-Item -Path 'C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\Sandbox\newfolder' -ItemType "directory"

#create new file 
New-Item -Path 'C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\Sandbox\newfolder\out.docx' -ItemType File



##remove file or folder 
Remove-Item C:\temp\DeleteMe

Remove-Item C:\temp\DeleteMe -Recurse

Remove-Item -Filter  .* C:\temp\DeleteMe -Recurse


#see environment variable like username, computer nae , domain name etc.
$env:USERNAME
$env:OS
$env:COMPUTERNAME

#read file content
Get-Content -Path C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\Function.txt

#return row count
(Get-Content -Path C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\Function.txt).Length

##################
[string[]] $path  = @("C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\Function.txt","C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\test1.txt")

foreach($f in $path){
    
    Write-Host "File content :"
    if(Test-Path $f)
    {
        Get-Content -Path $f 
    }
    else{
        Write-Host "file is not found"
    }
}



## validate file path / check file or folder is exist or not
Test-Path "C:\test\abcd.txt"  #return true if file is present or false if file is not present 


##return last name (file or folder)
Split-Path -Path 'C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\Function.txt' -Leaf


#merge two path 

Join-Path -Path $env:temp -ChildPath testing


#return complete path 
Resolve-Path -Path "C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\Sandbox\*\out.txt" 



#write content to the file 
'This is some text' | Out-File -FilePath "C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\Sandbox\newfolder\out.txt" 


#add content  (append data)
"hi" | Add-Content -Path "C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\Sandbox\newfolder\out.txt" 

#Set-Content (overwrite)
"hi" | Set-Content -Path "C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\Sandbox\newfolder\out.txt" 


#read content 
Get-Content -Path "C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\Sandbox\newfolder\out.txt" 




#Q. WAP to count word count from file 
#Q. WAP to get count of particular word from file (how many times is in a file?)
#Q. WAP to check either given text is exist in file or not
#Q. WAP to get file count in folder and in a subfolder
#Q. WAP copy data from one file and write to another file 






