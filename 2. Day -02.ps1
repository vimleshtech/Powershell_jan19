# Loop : is iterartor (repeation of statement/task/code)
# Example : 1 2 3... 10
# Concepts of loop: 
# i. init/from   : 1
# ii. condtion/limit : 10
# iii. steps(increment/decrement)  : +1
# iv. foreach 
############ Types of loop
#i. for loop
#ii. while loop
#iii. do while  / do until

#for loop  
#Example - 1
for($i=1;$i -le 10 ;$i++){
    Write-Host "Output is : $i"
}

#Example - 2
#print in reverse order 
for($i=10;$i -ge 1; $i--){
    Write-Host "out is : $i"
}


#Example - 3 
#WAP(Write a proram) to print all odd numbers between 1 to 30
for($i=1; $i -le 30; $i = $i+2){

    Write-Host "odd num : $i"
}

#Example - 4 
#WAP to show sum of all even and odd numbers
[int] $se = 0
[int] $so = 0

for($i=1; $i -le 100; $i++){
    if($i%2 -eq 0){
        $se += $i 
    }
    else{
        $so += $i 
    }
}

Write-Host "Sum of all even numbers : $se"
Write-Host "Sum of all odd numbers : $so"

#Example - 5 
#WAP to print table of given no.
[int] $t = Read-Host "enter data :"
for($i =1; $i -le 10; $i++){

    [int] $out = $t * $i 
    Write-Host " $t * $i = $out " 
    
}


### while loop
[int] $i =1  #init 
while($i -le 10) # condition 
{
    Write-Host "output is $i"
    $i++ #incrementer 
}


#print in descending order 
[int] $i =1
while($i -ge 0){
    Write-Host "output is $i"
    $i--
}


#print in descending order 
[int] $i =1
[int] $out=10
while($i -le 10){

    Write-Host "output is $out"
    $out--

    $i++
}



#print the numeber between two given range 
[int] $n1 = Read-Host "enter start  "
[int] $n2 = Read-Host "enter end "

while($n1 -le $n2){
    
    Write-Host "$n1"
    $n1++

}


########### do while: will execute at least once / first execute then check the conditon 
[int] $i =1 
do
{
    Write-Host "$i"
    $i++

}while($i -le 0 )



## do until 
[int] $i =1

DO
{
    Write-Host "$i"
    $i++
    
}until($i -le 3)  ### error ###

Write-Host "test.."



### for each 
### array : is collection of data or values

#declare array 

 $users = @("Alder","Ash","Birch","Cedar","Chestnut","Elm")

 foreach ($user in $users) {
 
   "$user = " + $user.length

 }


##questions 

Question B76: WAP to print the following series:
(1)	2, 4, 8, 16, 32, 64, 128, 256
(2)	1, 4, 7, 10, …………… 40
(3)	1, -4, 7, -10……………-40
(4)	1, 5, 11, 19, 29 ……..
(5)	(1)+(1+2)+(1+2+3)+(1+2+3+4)…………..up to n terms**
(6)	(2) + (2+4) + (2+4+6) + (2+4+6+8)………….up to n terms.
(7)	(1) + (1+3) + (1+3+5) + (1+3+5+7)…………..up to n terms

