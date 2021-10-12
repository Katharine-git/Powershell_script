$basepath = 'C:\Users\user\OneDrive\Documents\PS Tasks'
$name =  Get-Content 'C:\Users\user\OneDrive\Documents\PS Tasks\filename.txt' 
for($i=0; $i -lt $name.Count; $i++)
{
New-item -Path ($basepath) -Name ($name[$i]) -ItemType "file" 
}
Get-Content 'C:\Users\user\OneDrive\Documents\PS Tasks\list.txt'
a.txt
b.txt
c.txt
{
  "userId": 1,
  "id": 1,
  "title": "delectus aut autem",
  "completed": false
}
# get-childitem "C:\Users\user\OneDrive\Documents\PS Tasks\" -recurse | where {$_.extension -eq ".ps1"} | % 
# {
#   Write-Host $_.FullName
# }
# Get-ChildItem -Path 'C:\Users\user\OneDrive\Documents\'
# get-childitem "C:\Users\user\OneDrive\Documents\PS Tasks\" -recurse |ForEach-Object -Process {$_.FullName}
# ForEach-Object {$_.extension -eq ".ps1"}
# {
# Get-Content 'C:\Users\user\OneDrive\Documents\PS Tasks\*.ps1' 
# }
# ForEach-Object


Get-ChildItem -Path 'C:\Users\user\OneDrive\Documents\PS Tasks\'
$list = get-childitem "C:\Users\user\OneDrive\Documents\PS Tasks\" -recurse |ForEach-Object -Process {$_.FullName}
ForEach($file in $list)
{
	$appending = Get-Content -Path $file
	Add-Content -Path "C:\Users\user\OneDrive\Documents\PS Tasks\appended.ps1" -Value $appending
}
get-childitem "C:\Users\user\OneDrive\Documents\PS Tasks\" -recurse | where {$_.extension -eq ".ps1"} | % 
{
  Write-Host $_.FullName
}

#Function to validate and create files whose names are stored in a text file
Function validate($name)
{
    $basepath = 'C:\Users\user\OneDrive\Documents\PS Tasks'
    $name =  Get-Content 'C:\Users\user\OneDrive\Documents\PS Tasks\filename.txt' 
    for($i=0; $i -lt $name.Count; $i++)
    {
    New-item -Path ($basepath) -Name ($name[$i]) -ItemType "file" 
    }

}
validate(Get-Content 'C:\Users\user\OneDrive\Documents\PS Tasks\filename.txt')
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
$basepath = 'C:\Users\user\OneDrive\Documents\PS Tasks'
$name =  Get-Content 'C:\Users\user\OneDrive\Documents\PS Tasks\filename.txt' 
for($i=0; $i -lt $name.Count; $i++)
{
New-item -Path ($basepath) -Name ($name[$i]) -ItemType "file" 
}
Get-Content 'C:\Users\user\OneDrive\Documents\PS Tasks\list.txt'
a.txt
b.txt
c.txt
{
  "userId": 1,
  "id": 1,
  "title": "delectus aut autem",
  "completed": false
}
# get-childitem "C:\Users\user\OneDrive\Documents\PS Tasks\" -recurse | where {$_.extension -eq ".ps1"} | % 
# {
#   Write-Host $_.FullName
# }
# Get-ChildItem -Path 'C:\Users\user\OneDrive\Documents\'
# get-childitem "C:\Users\user\OneDrive\Documents\PS Tasks\" -recurse |ForEach-Object -Process {$_.FullName}
# ForEach-Object {$_.extension -eq ".ps1"}
# {
# Get-Content 'C:\Users\user\OneDrive\Documents\PS Tasks\*.ps1' 
# }
# ForEach-Object


Get-ChildItem -Path 'C:\Users\user\OneDrive\Documents\PS Tasks\'
$list = get-childitem "C:\Users\user\OneDrive\Documents\PS Tasks\" -recurse |ForEach-Object -Process {$_.FullName}
ForEach($file in $list)
{
	$appending = Get-Content -Path $file
	Add-Content -Path "C:\Users\user\OneDrive\Documents\PS Tasks\appended.ps1" -Value $appending
}
get-childitem "C:\Users\user\OneDrive\Documents\PS Tasks\" -recurse | where {$_.extension -eq ".ps1"} | % 
{
  Write-Host $_.FullName
}

#Function to validate and create files whose names are stored in a text file
Function validate($name)
{
    $basepath = 'C:\Users\user\OneDrive\Documents\PS Tasks'
    $name =  Get-Content 'C:\Users\user\OneDrive\Documents\PS Tasks\filename.txt' 
    for($i=0; $i -lt $name.Count; $i++)
    {
    New-item -Path ($basepath) -Name ($name[$i]) -ItemType "file" 
    }

}
validate(Get-Content 'C:\Users\user\OneDrive\Documents\PS Tasks\filename.txt')
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
$basepath = 'C:\Users\user\OneDrive\Documents\PS Tasks'
$name =  Get-Content 'C:\Users\user\OneDrive\Documents\PS Tasks\filename.txt' 
for($i=0; $i -lt $name.Count; $i++)
{
New-item -Path ($basepath) -Name ($name[$i]) -ItemType "file" 
}
Get-Content 'C:\Users\user\OneDrive\Documents\PS Tasks\list.txt'
a.txt
b.txt
c.txt
{
  "userId": 1,
  "id": 1,
  "title": "delectus aut autem",
  "completed": false
}
# get-childitem "C:\Users\user\OneDrive\Documents\PS Tasks\" -recurse | where {$_.extension -eq ".ps1"} | % 
# {
#   Write-Host $_.FullName
# }
# Get-ChildItem -Path 'C:\Users\user\OneDrive\Documents\'
# get-childitem "C:\Users\user\OneDrive\Documents\PS Tasks\" -recurse |ForEach-Object -Process {$_.FullName}
# ForEach-Object {$_.extension -eq ".ps1"}
# {
# Get-Content 'C:\Users\user\OneDrive\Documents\PS Tasks\*.ps1' 
# }
# ForEach-Object


Get-ChildItem -Path 'C:\Users\user\OneDrive\Documents\PS Tasks\'
$list = get-childitem "C:\Users\user\OneDrive\Documents\PS Tasks\" -recurse |ForEach-Object -Process {$_.FullName}
ForEach($file in $list)
{
	$appending = Get-Content -Path $file
	Add-Content -Path "C:\Users\user\OneDrive\Documents\PS Tasks\appended.ps1" -Value $appending
}
get-childitem "C:\Users\user\OneDrive\Documents\PS Tasks\" -recurse | where {$_.extension -eq ".ps1"} | % 
{
  Write-Host $_.FullName
}

#Function to validate and create files whose names are stored in a text file
Function validate($name)
{
    $basepath = 'C:\Users\user\OneDrive\Documents\PS Tasks'
    $name =  Get-Content 'C:\Users\user\OneDrive\Documents\PS Tasks\filename.txt' 
    for($i=0; $i -lt $name.Count; $i++)
    {
    New-item -Path ($basepath) -Name ($name[$i]) -ItemType "file" 
    }

}
validate(Get-Content 'C:\Users\user\OneDrive\Documents\PS Tasks\filename.txt')
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
