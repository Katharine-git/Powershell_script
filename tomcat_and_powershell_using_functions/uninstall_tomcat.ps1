function uninstallTomcat($path){
       
    Remove-Item -Path $path -Force -ErrorAction Ignore
    
}
uninstallTomcat "C:\Program Files\tomcat"