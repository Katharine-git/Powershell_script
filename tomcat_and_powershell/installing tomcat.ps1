#install apache tomcat

#variables
$path= "C:\Users\Administrator\Documents\PS_Commands\tomcat_and_powershell\tomcat.properties"
$output= Get-content $path| ConvertFrom-StringData

$url=$output.url
$destination=$output.destination
$unzip_destination=$output.unzip_destination
$port=$output.port

#downloading and unzipping
Write-host "downloading started"
Invoke-WebRequest -uri $url -OutFile $destination
Write-Host "ready to extract"
Write-Host "extracting files...."
Expand-Archive -LiteralPath $destination -DestinationPath $unzip_destination

#port-change(if necessary)
(Get-Content "$unzip_destination\apache-tomcat-8.5.72\conf\server.xml").replace('8080',$port)|Set-Content "$unzip_destination\apache-tomcat-8.5.72\conf\server.xml"
