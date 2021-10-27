# Task 1
# Check the url(https://jsonplaceholder.typicode.com/todos/1) and you need to download the data and present/print those details
# 1. validate If the website exists download the values from the url
# 2. Print the user Id and status

# Task 2
# Get the computer name, the logged in user along with the free space in the computer

Function validate($url)
{

$test = invoke-webrequest -uri $url -UseBasicParsing | ConvertFrom-Json
$outfile = 'C:\Users\user\OneDrive\Documents\PS Tasks\list1.txt'
$user = (Get-WMIObject -ClassName Win32_ComputerSystem).Username
$name = [System.Net.Dns]::GetHostName()
$space = (Get-CimInstance -ClassName Win32_LogicalDisk).FreeSpace

#Print the contents of the webpage(User id and status)
Write-Host "user-id : " $test.id
Write-Host "completed : " $test.completed

#Downloading the contents to a text file
Write-Host "Contents being downloaded to " $outfile
Invoke-WebRequest -Uri $url -OutFile $outfile

#Print Computername, Logged-in user, Free disk space.
Write-Host "ComputerName :" $name 
Write-Host "Logged-in user :" $user 
Write-Host "Free disk space :" $space 

}
validate("https://jsonplaceholder.typicode.com/todos/1")
