<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2016 v5.2.127
	 Created on:   	10/30/2016 9:40 AM
	 Created by:   	Richard Smith
	 Organization: 	
	 Filename:     	git-Ping_List_of_Hostnames_from_TxtFile.ps1
	===========================================================================
	.DESCRIPTION
		Ping_List_of_Hostnames_from_TxtFile
#>

$names = Get-content "C:\serverlist.txt"

foreach ($name in $names){
  if (Test-Connection -ComputerName $name -Count 1 -ErrorAction SilentlyContinue){
    Write-Host "$name,up" -ForegroundColor Green
  }
  else{
    Write-Host "$name,down" -ForegroundColor Red
  }
} 