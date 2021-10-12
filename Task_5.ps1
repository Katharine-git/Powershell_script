Get-ChildItem -Path 'C:\Users\user\OneDrive\Documents\PS Tasks\'
$list = get-childitem "C:\Users\user\OneDrive\Documents\PS Tasks\" -recurse |ForEach-Object -Process {$_.FullName}
ForEach($file in $list)
{
	$appending = Get-Content -Path $file
	Add-Content -Path "C:\Users\user\OneDrive\Documents\PS Tasks\appended.ps1" -Value $appending
}