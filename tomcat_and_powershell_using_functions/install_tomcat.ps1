#Tasks completed

#Add dependencies installation/uninstallation script for Tomcat
#Convert the scripts to functions, which accepts the Tomcat version, download url
#Create both uninstall and install scripts

function InstallJava($javaVersion, $jdkVersion, $url, $fileName, $jdkPath, $jrePath) {
    Write-Host "Installing $javaVersion..." -ForegroundColor Cyan
    
     # download
    Write-Host "Downloading installer"
    $exePath = "$env:USERPROFILE\$fileName"
    $logPath = "$env:USERPROFILE\$fileName-install.log"
    [System.Net.ServicePointManager]::ServerCertificateValidationCallback = { $true }
    $client = New-Object Net.WebClient
    $client.Headers.Add('Cookie', 'gpw_e24=http://www.oracle.com; oraclelicense=accept-securebackup-cookie')
    $client.DownloadFile($url, $exePath)
    
     # install
    Write-Host "Installing JDK to $jdkPath"
    Write-Host "Installing JRE to $jrePath"
    
    $arguments = "/c start /wait $exePath /s ADDLOCAL=`"ToolsFeature,PublicjreFeature`" INSTALLDIR=`"$jdkPath`" /INSTALLDIRPUBJRE=`"$jrePath`""
    $proc = [Diagnostics.Process]::Start("cmd.exe", $arguments)
    $proc.WaitForExit()

    Write-Host "$javaVersion installed" -ForegroundColor Blue
    }
    
    InstallJava "JDK 1.8 x64" 8 "https://storage.googleapis.com/appveyor-download-cache/jdk/jdk-8u221-windows-x64.exe" "jdk-8u221-windows-x64.exe" "$env:ProgramFiles\Java\jdk1.8.0" "$env:ProgramFiles\Java\jre8"
    
    # Set Java home
    [Environment]::SetEnvironmentVariable("JAVA_HOME", "C:\Progra~1\Java\jdk1.8.0", "machine")
    $env:JAVA_HOME="C:\Progra~1\Java\jdk1.8.0"

function installtomcat($url,$destination,$unzip_destination) {
   
    # downloading tomcat    
    Write-host "downloading started"
    Invoke-WebRequest -uri $url -OutFile $destination
    Write-Host "ready to extract"
    Write-Host "extracting files...."
    Expand-Archive -LiteralPath $destination -DestinationPath $unzip_destination  
    
    #start tomcat
    cd "C:\Program Files\tomcat\apache-tomcat-8.5.72\bin"
    startup.bat
#-----------------------use the below script only if you want to make config changes like change port number----------------
    #stop tomcat
    cd "C:\Program Files\tomcat\apache-tomcat-8.5.72\bin"
    shutdown.bat

    #port-change(if necessary)
    (Get-Content "$unzip_destination\apache-tomcat-8.5.72\conf\server.xml").replace('8080','8085')|Set-Content "$unzip_destination\apache-tomcat-8.5.72\conf\server.xml"

    #restart tomcat
    cd "C:\Program Files\tomcat\apache-tomcat-8.5.72\bin"
    startup.bat

}

installtomcat "https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.72/bin/apache-tomcat-8.5.72-windows-x64.zip" "C:/Users/Administrator/Downloads/tomcat.zip" "C:/Program Files/tomcat"




