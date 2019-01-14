# Array : Is collection of data or values or objects 
# - Multiple values can be stored on a single variable 
# Example :
$a = @("Server1","Server2","Servers3","Server1")

#print array 
$a 

#get data type
$a.GetType()  #System.Array 

#get length 
$a.Length  #count of element 
$a.Count   #count of element 

#Add new element in existing array 
#$a.Add(100)

$a+="server5" #add new server 5

#$a.Remove("server1")

$a.IsFixedSize

#Array index start from 0 and last index will be len - 1
$a[1] #return 2nd element 



#variant : different types of data 
$arr = @("server1",11111,"test111",33333.222)
$arr.GetType()

#other way to declare the array 
$myArray = 64,"Hello",3.5,"World", "Demo"


##add two array/merge two array
$array = @("test1", "test2", "test3")
$array2 = @("test4", "test5")

$array = $array + $array2
$array

##function 
$array[1].ToUpper()

$array[1].ToLower()

$array[1].Length


#declare array with one type variable
[int[]]  $s= 1,3,3,6,7

[int[]] $a =1..9
$a


#declare empty array
$out = @()

$out +=444

[int] $s =0
foreach($e in $out){
    $s = $s+$e 
}
$s 


####
$aa = @("Server1","Server2","Servers3","Server1")
for($i=0; $i -lt $aa.Length; $i++)
{

   Write-Host  $aa[$i]
}
## Multi dimenssion array

$myMultiArray = @(  (1,2,3),(40,50,60)   )

$myMultiArray[1]

$myMultiArray[1][0]


##
Question D1: WAP to input the marks of 10 students in an array of integers and
 display the marks.
Question D2: WAP to search how many times a number is present in an array. 
Question D3: WAP to subtract two arrays of the same size.
Question D4: WAP to input the sales made by a salesman in every month of a given year and find out the total, average, maximum and minimum sales.
Question D5: WAP to calculate the average of 10 values stored in an array and display all those values which are more than the calculated average.
