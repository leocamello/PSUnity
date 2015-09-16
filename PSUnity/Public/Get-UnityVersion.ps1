#
# Get_UnityVersion.ps1
#

function Get-UnityVersion {
	(Get-ItemProperty -Path 'Registry::HKEY_CURRENT_USER\SOFTWARE\Unity Technologies\Installer\Unity\').Version
}
