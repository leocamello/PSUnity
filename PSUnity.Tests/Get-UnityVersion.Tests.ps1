#
# Get-UnityVersion.Tests.ps1
#

Import-Module $PSScriptRoot\..\PSUnity -Force

Describe "Get-UnityVersion" {
	InModuleScope PSUnity {
		Context "No Unity is installed" {
			Mock Get-ItemProperty { }
			It "Should throw an exception" {
				Get-UnityVersion | Should Throw
			}
		}
		Context "Unity version 5.2 is installed" {
			Mock Get-ItemProperty {	@{ Location="C:\Program Files (x86)\Unity"; Version="5.2"; } }
			It "Should outputs '5.2'" {
				Get-UnityVersion | Should Be "5.2"
			}
		}
	}
}
