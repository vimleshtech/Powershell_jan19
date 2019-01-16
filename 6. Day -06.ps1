
function get-data {

    [int] $data = Read-Host "enter data "
    return $data
}

[int] $n1 = get-data
[int] $n2 = get-data
$n1 + $n2 

#System Defined Function :
# 1. String function 
# 2. Date funciton 

#Concatenating strings 
[string] $fn  ="Raman"
[string] $ln  ="Sinha"

$fn+" "+$ln
#or 
-join($fn," ",$ln)

#Splitting strings by given seperator 
[string] $data = Read-Host "enter string data"
$data.split(" ") 
$out = $data.split("a")
$out[0] #access first index of array 

#break the string and return 2nd element
("Hello world").split("ll"" ", 2)

#Or
("Hello world") -split  ' ' 


#Extracting substrings ^
("Hello world").Substring(2,5) #2 is starting index, and 5 is number chars 

#remove data 
("Hello world").Remove(2,3) #llo will be removed 

#find and replace with new char
"hello world".Replace("o","mn")


#compare or search string is present in given sentence or not 
$str = "this is powershell scripting. powershell is open source windows scripting plateform"

#check open is exist in above sentence 

$str.Contains("open")

if($str.Contains("open")){
 
    Write-Host "data matched"

}else{
    Write-Host "data didn't match"
}

##startswith 
if($str.StartsWith("his")){
 
    Write-Host "data matched"

}else{
    Write-Host "data didn't match"
}

##endswith 
if($str.EndsWith("open")){
 
    Write-Host "data matched"

}else{
    Write-Host "data didn't match"
}


##get/find the position of particular char/word
#this
$str.IndexOf("is")


##length  : return count of characters including space
$str.Length




##compareTo and equals 
("Hello world").CompareTo("Hello" + " " + "world") # 0 for match, 1 for not match 
("Hello world").Equals("Hello" + " " + "world") # True for match 

if(("Hello world").Equals("Hello" + " " + "world") )
{
    Write-Host "data is matched"
}
else
{
    Write-Host "data is not matched"
}

##convert string to upper case 
$str.ToUpper()

##convert to lower case 
$str.ToLower()



###################################
#date time 
###################################
Get-Date    #return current date and time 
(Get-Date).Date
(Get-Date).Day
(Get-Date).Month
(Get-Date).Year
(Get-Date).DayOfWeek
(Get-Date).DayOfYear
(Get-Date).Hour
(Get-Date).Minute
(Get-Date).Second
(Get-Date).TimeOfDay

Write-Host (Get-Date).Month (Get-Date).Day

##show date with in given format 
$now = Get-Date -format "dd-MMM-yyyy HH:mm"
Get-Date -format "dd-MMM-yyyy"
Get-Date -format "yyyyMMdd"
Get-Date -format "MMM"


function get-mont-name($mn){
    [string] $mname =""

    switch($mn){
        
        1{$mname="Janaury"}
        2{$mname="feb..."}
        3{$mname="march"}
        4{$mname="april"}
        
    }
    return $mname
    
}
[int] $m = (Get-Date).Month
get-mont-name $m 


#date time operations
(Get-Date).AddDays(-1)
(Get-Date).AddDays(10)
((Get-Date).AddDays(10)).DayOfWeek

((Get-Date).AddYears(10)).DayOfWeek


(Get-Date).IsDaylightSavingTime()
(Get-Date).ToUniversalTime()



#Q. wap to convert given sentence to proper case 
# example : this is java = This Is Java
#Q. wap to get count of word in given sentence 
#Q. wap to get count of particular word in given sentence
#Q. wap to get count of space in given sentence 
#Q. wap to get diffrence between two dates in days 






