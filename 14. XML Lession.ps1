############################
# Formating and XML 
############################
# XML : Extensible markup language  is tag based where data can be stored and process 
# Formating : is way to seperate data by delimeter or tags 

#Example :   Open tag: <users>   Closing tag:  </users>
<users>   #document tag open
    <user>    #row tag open 
            <id> 1 </id>    #value or col tag
            <name> nitin </name>    #value or col tag
            <gender> male </gender>    #value or col tag
            <age> 21 </age>    #value or col tag
    </user>   #row tag close        
    <user>    #row tag open 
            <id> 2 </id>    #value or col tag
            <name> raman </name>    #value or col tag
            <gender> male </gender>    #value or col tag
            <age> 31 </age>    #value or col tag
    </user>   #row tag close        
    <user>    #row tag open 
            <id> 3 </id>    #value or col tag
            <name> nitisha </name>    #value or col tag
            <gender> female </gender>    #value or col tag
            <age> 21 </age>    #value or col tag
    </user>   #row tag close        

</users>  # docuement tag closing

# we can create file with .xml extension
#here xml is data type 
[xml]$xmlData = Get-Content "C:\Users\vkumar15\Desktop\Blocking\test_users.xml"
#now print the object : we can just see the header 
$xmlData  

#now get the data type 
$xmlData.GetType()  #here system.Xml.XmlNode is library 

#just get the name for format
$xmlData.GetType().FullName

#now read or print data and format this  : users.user (is tag or node)
$xmlData.users.user | Format-Table -AutoSize      # Format-Table -AutoSize  to show every column(tag) in tabular format 


#read data by index 
$xmlData.users.user[0]  #get 1st row
$xmlData.users.user[1]  #get 2nd row

#get col
$xmlData.users.user[1].id
$xmlData.users.user[1].name
$xmlData.users.user[1].age



