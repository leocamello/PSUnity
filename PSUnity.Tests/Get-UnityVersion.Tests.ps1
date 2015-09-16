#
# Get-UnityVersion.Tests.ps1
#

Import-Module $PSScriptRoot\..\PSUnity -Force

Describe "Get-UnityVersion" {
	InModuleScope PSUnity {
		Context "Unity version 5.2 is installed" {
			Mock Get-ItemProperty {	@{ Location="C:\Program Files (x86)\Unity"; Version="5.2"; } }
			It "Get-UnityVersion should outputs '5.2'" {	
				Get-UnityVersion | Should Be "5.2"
			}
		}
	}
}