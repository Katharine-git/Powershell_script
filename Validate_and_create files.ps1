
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