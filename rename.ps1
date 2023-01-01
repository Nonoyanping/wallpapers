$i = 0

Get-ChildItem -Path C:\Users\snowm\Pictures\審査中 -Filter *.jpg |
ForEach-Object {
$extension = $_.Extension
$newName = '{0:d5}{1}' -f $i, $extension
$i++
Rename-Item -Path $_.FullName -NewName $newName
}
