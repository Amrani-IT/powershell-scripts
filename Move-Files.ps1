$source = "C:\Source"
$destination = "C:\Destination"

Get-ChildItem -Path $source -Filter "*.txt" | Move-Item -Destination $destination
