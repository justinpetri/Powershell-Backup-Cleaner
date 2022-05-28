# Powershell Use
This script is used for managing Windows Server 2019 backups. It can be implemented with Windows' Task Scheduler program to automatically rename or remove the directories containing backups each day. The script assumes the backups are stored in a directory in the E:\ drive named: WindowsImageBackup. It searches for backups older than seven days and removes them.

In our use case, we were dealing with a total of two backups every twenty-four hours from SERVER01 and SERVER02. In order to prevent Windows from overriding the previous day's backups, the script also takes the creation dates and stores them in a variable before assigning them to the two most recent backups.

If Powershell or Task Scheduler returns a permission error, the following code can be used to allow the program to run:
`Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted`
