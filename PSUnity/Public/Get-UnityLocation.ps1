#
# Get_UnityLocation.ps1
#

function Get-UnityLocation {
	(Get-ItemProperty -Path 'Registry::HKEY_CURRENT_USER\SOFTWARE\Unity Technologies\Installer\Unity\').Location
}
