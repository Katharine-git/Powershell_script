#This script gets and list all files and folders from the directory where your code resides, prints all files with full path in console. 
#Read all ps1 files and gets the content and append everything to a new file with *.ps1 extension.

Get-ChildItem -Path 'C:\Users\user\OneDrive\Documents\PS Tasks\'
$list = get-childitem "C:\Users\user\OneDrive\Documents\PS Tasks\" -recurse |ForEach-Object -Process {$_.FullName}
ForEach($file in $list)
{
	$appending = Get-Content -Path $file
	Add-Content -Path "C:\Users\user\OneDrive\Documents\PS Tasks\appended.ps1" -Value $appending
}