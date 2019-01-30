#Get-Content : read content from file 
#Set-Content : overwrite the content in existing file
#Add-Content : append the content in existing file
#Clear-Content: remove the content from existing file 

#read all content from file 
Get-Content "C:\Users\vkumar15\Desktop\Test.txt"


#get row count 
(Get-Content "C:\Users\vkumar15\Desktop\Test.txt").Length


#set contet / overwite the data
"my new content" | Set-Content "C:\Users\vkumar15\Desktop\Test.txt"

#append data in existing file 
"add new rows and data " | Add-Content "C:\Users\vkumar15\Desktop\Test.txt"

#Example 1: write dynamic data to file 
[int] $i = 1
while($i -eq 1){

    [int] $ch  = Read-Host "press 1 to add content 2 to show content 0 for exit"

    if($ch -eq  1){

    [string] $data = Read-Host "enter data "
    $data |  Add-Content "C:\Users\vkumar15\Desktop\Test.txt"

    }
    elseif($ch -eq 2 ){
        Get-Content "C:\Users\vkumar15\Desktop\Test.txt"
    }
    elseif($ch -eq 0){
        $i = 0 
    }
    else{
        Write-Host "Invalid input, plz try again!!!"
    }

}

##remove content 
Clear-Content "C:\Users\vkumar15\Desktop\Test.txt"


#Example 
[int] $l = 0
foreach($data in  Get-Content "C:\Users\vkumar15\Desktop\Test.txt"){

    $l = $l +  $data.Length
}

Write-Host "Total char count $l"



#wap to get count of word from file 
#wap to get count of given word from file. example: is?

#Example 
[int] $counter = 0
foreach($data in  Get-Content "C:\Users\vkumar15\Desktop\Test.txt"){

    foreach($word in  $data.Split(" ")){

            if ("is" -eq $word)            {
                    $counter = $counter+1
            }
    }
}

Write-Host "count of is  : $counter"


#wap to count of male and female from file
input.txt
id,name,gender
1,raman,male
2,jatin,male
3,jyoti,female
4,nidhi,female
5,ruchika,female

    male - 2
    female -3


#Example 
[int] $male_count = 0
[int] $female_count = 0
foreach($data in  Get-Content "C:\Users\vkumar15\Desktop\Test.txt"){

    $word =  $data.Split(",")

            if ($word[2] -eq "male")            
            {
                    $male_count = $male_count +1
            }
            else
            {
                $female_count = $female_count +1
            }
    
}

Write-Host "count of is  : $male_count"
Write-Host "count of is  : $female_count"



