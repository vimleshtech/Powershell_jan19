
#Exception Handling or Error Handling 
#Exception : is runtime error which may or may not occur 
#Handling : tackle the error when this will occur 
#Ovejective of error/exception handling : i. Customization of error message 
                                        #ii. Prevent the entire code from failure due to few error
                                        #iii. Maintain/store the error logs (a. store to file, b. send the email) 
#There are following inbuilt keywords to manage the exception handling 
#i. try  ii. catch iii. throw (raise the error when user condition will match)
#iv. finally : is optional block which may preset after try , however this will execute always if finally block is present
#Example 1:

[int] $n = Read-Host "Enter data "
[int] $d = Read-Host "Enter data "

try
{
    [int] $out = $n/$d 
    Write-Host "Output is : $out " 

}
catch{
    
    Write-Host "There is some logical error, please validate your input"
}

#Example : 2
[int] $n = Read-Host "Enter data "
[int] $d = Read-Host "Enter data "

try
{
    if ($d -lt 0){

        throw "raise error"
    }
    [int] $out = $n/$d 
    Write-Host "Output is : $out " 
}
catch{

    $td = Get-Date    
    #write to file
    "$td |There is some logical error, please validate your input" | Add-Content "C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\Sandbox\log.txt"

    Write-Host "$td |There is some logical error, please validate your input"
    #send email 
    ##generate error 
    #Write-Error "test -error"
}
finally{

        Write-Host "End of the block"
}


#Example 3: try with multiple catch block 

try
{
        #Take input from user
        [int] $n = Read-Host "Enter data "
        [int] $d = Read-Host "Enter data "

        #div example 
        [int] $out = $n/$d 
        Write-Host "Output is : $out " 


        #read data from file 
        Get-Content "C:\Users\vkumar15\Documents\Training\Training\PowerShell\PowerShell\Sandbox\log.txt"
                    
}
catch [System.IO.DirectoryNotFoundException],[System.IO.FileNotFoundException]{

            Write-Host "file not found"
}
catch [System.IO.IOException]{

        Write-Host "Input/output error"
}
catch {
        Write-Host "Other error"
}


################
DataType
Variable
Input and Output
Operator
Codition : if , swtich
Loop and its type
Array
String Function 
Function (user defined)
DateTime function - Get-Date
File and folder hadling(operation)
read,write,delete,copy , backup operation
Exception Handling 
        
        Q. Show list of files and folder which is modifed in last 24 hours from given path 
        Q. Write list of files and folder in a file.txt
        Q. read the .txt file and copy all the lines which contains user name or password word in another file 


Next:
-----------
exe/mis installation
Interaction with AD 
AD Operations 

################

[System.IO.InvalidDataException]
[int]
[string]



