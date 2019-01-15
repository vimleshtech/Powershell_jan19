#Function : is block or set of code/instrutions/command which is reusable 

#create first function without parameter
function show-message{

    Write-Host "Test-message"
    Write-Host "You are inside the function"
}

#create function with argument 
#add-number is name of the user defined function
function add-number($a,$b){

    [int] $c  = $a + $b 
    Write-Host "sum of two numebrs : $c"
}

#create function with no argument but return 
function get-data{

    [int] $data = Read-Host "Enter data :"
    return $data 
}

#create function with argument and return 
function sub-numbers($a, $b){

    [int] $c = $a - $b 
    return $c 

}

#call /invoke / run the function 
show-message
#call to function with argument 
add-number 11 22 
### call function and receive the data 
$n1 = get-data 
$n2 = get-data 
$n1 + $n2 

### argument with return 
[int] $out = sub-numbers 11 22
Write-Host "output is $out"


##functions :
#Question F1: Write a function that takes one integer argument and returns its square.
#QuestionF2: Write a function to calculate the cube of a number.
#Question F3: Write a function to calculate the area of a circle where radius is passed to the function as argument.
#Question F4: Write a function to calculate the area of a rectangle where length and breadth are passed to the function as argument.

