#Validating url and displaying 
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