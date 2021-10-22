function installJava($javaVersion, $jdkVersion, $url) {
     # installing java and setting env variables
     Invoke-WebRequest -uri $url -OutFile $destination
     #Execute-Process "C:/Program Files/java.exe" -Arguments '/s INSTALL_SILENT=1 STATIC=0 AUTO_UPDATE=0 WEB_JAVA=1 WEB_JAVA_SECURITY_LEVEL=H WEB_ANALYTICS=0 EULA=0 REBOOT=0 NOSTARTMENU=0 SPONSORS=0 /L c:\temp\jre-8u45-windows-x64.log'
     #[Environment]::SetEnvironmentVariable("JAVA_HOME", "C:\Progra~1\Java\jdk1.8.0", "machine")
     #$env:JAVA_HOME="C:\Progra~1\Java\jdk1.8.0"

    
}
installJava "JDK 1.8 x64" 8 "https://storage.googleapis.com/appveyor-download-cache/jdk/jdk-8u221-windows-x64.exe"