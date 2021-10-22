function uninstallJava($path){

# uninstall current Java versions
   
    #Remove-Item -Path $path -Force -ErrorAction Ignore
    [Environment]::SetEnvironmentVariable("JAVA_HOME", " " ,"User")
    [Environment]::SetEnvironmentVariable("JAVA_HOME", " " ,"System variables")

}
uninstallJava "C:\Program Files\Java\"