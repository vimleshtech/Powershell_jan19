# ctrl +  : zoom in 
# ctrl - : zoom out
# F5     : run all script / current file
# F8     : run selected script 
# declare variable 
$a =100   # $a is variable and 100 is data 
Write-Host "value is : $a "

#int is data type 
[int] $d = 2222
Write-Host "output is $d"

#Example - 1 
#input from user 
[int] $data1 = Read-Host "enter some value "
[int] $data2 = Read-Host "enter some value "
[int] $data = $data1 + $data2  # expression 
Write-Host "sum of two numbers : $data"


#Example - 2
[string] $fn = Read-Host "enter first name "
[string] $ln = Read-Host "enter last name "

[string] $name = $fn + " "+ $ln 
Write-Host "Full name is $name "

##Example -3 Operator
$n = 34/10    #return quotent with decimal 
Write-Host "output is $n"

$n = 34%10    #return moduls 
Write-Host "output is $n"  


#Assignment Operators
$n = 2
$n +=10    # $n = $n + 10
Write-Host $n 

$n *=10
Write-Host $n 


$n /=10
Write-Host $n 

$n %=10
Write-Host $n 

# incrementer and decrementer 
$i=1
$i++   # $i = $i + 1  #incrementer 
Write-Host $i 

#decrementer 
$i--
Write-Host $i 

#postfix and prefix 
$i =1
$j =1

$i++
Write-Host $i # 2

++$j 
Write-Host $j # 2

Write-Host $i # 2
Write-Host $j # 2


#Example - 4
##Conditional Statement 
$hs = 77
$es = 66
$cs = 56
$ms = 45

$total= $hs+$es + $cs + $ms 
$avg = $total / 4
Write-Host "total score is $total"
Write-Host "average score is $avg"

if( $avg -ge 80 ){

    Write-Host "Grade A"

} elseif($avg -ge 60){

    Write-Host "Grade B"

} elseif ($avg -ge 40 ){
    
    Write-Host "Grade C"

}else{

    Write-Host "Grade D"
}


#Example -5 #wap to check given no is odd or even 
[int] $n = Read-Host "enter number "
if( $n % 2 -eq 0 ){
    
    Write-Host "$n is even no"

}else{

    Write-Host "$n is odd no"
}


#Example  - 6  #wap to show greater no from three inputs 
# and or or    : to compare two or more than two condition in as single block
# and : if both condition is match then condition is true 

[int] $n1 = Read-Host "enter numebr  "
[int] $n2 = Read-Host "enter numebr  "
[int] $n3 = Read-Host "enter numebr  "

if($n1 -gt $n2 -and $n1 -gt $n3){

    Write-Host "$n1 is greater"

}elseif($n2 -gt $n1 -and $n2 -gt $n3){
    
    Write-Host "$n2 is greater"
}else{

    Write-Host "$n3 is greater"

}

#switch case 
[int] $choice = Read-Host "enter your choice "

Switch($choice){

    1{ Write-Host "monday" }

    2{ Write-Host "tuesday" }

    3{ Write-Host "wednesday" }

    4{ Write-Host "thursday" }

    5{ Write-Host "firday"}

    default{ Write-Host "weekend or other day" }
        
}



#questions:
#Question B8: WAP to input the salary of a person and calculate the hra and da according to the following conditions:
		Salary 				HRA		DA
 		5000-10000			10%		5%	
		10001-15000			15%		8%
#Question B9: WAP to input marks in five subjects of a student and calculate the division according to the following conditions:
		Percentage				Division
		>=60					First
		50-59					Second
		40-49					Third
		<40					Fail
#Question B10: An electricity board charges according to the following rates:
		For the first 100 units -   40 paisa per unit.
		For the next 200 units -   50 paisa per unit.
		beyond 300 units -  60 paisa per unit.
All users are charged meter charges also, which are Rs. 50/-



