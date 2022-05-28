Get-ChildItem -Path “E:\WindowsImageBackup” -Recurse | Where-Object CreationTime -lt (Get-Date).AddDays(-7) | Remove-Item
$date01 = ‘SERVER01_{0:MM-dd-yy}’ -f (Get-Date)
$date02 = ‘SERVER02_{0:MM-dd-yy}’ -f (Get-Date)
Rename-Item -Path E:\WindowsImageBackup\SERVER01 -NewName $date01
Rename-Item -Path E:\WindowsImageBackup\SERVER02 -NewName $date02
