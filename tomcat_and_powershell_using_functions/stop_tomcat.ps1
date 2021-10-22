$path= "C:\Users\user\OneDrive\Documents\PS Tasks\tomcat_and_powershell_2\tomcat.properties"
$output= Get-content $path| ConvertFrom-StringData

$filelocation=$output.unzip_destination
$tomcatversion=$output.version

Set-Location -Path $filelocation\$tomcatversion\bin

Start-Process shutdown.bat