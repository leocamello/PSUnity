#
# Get-UnityLocation.Tests.ps1
#

Import-Module $PSScriptRoot\..\PSUnity -Force

Describe "Get-UnityLocation" {
	InModuleScope PSUnity {
		Context "No Unity is installed" {
			Mock Get-ItemProperty { }
			It "Should throw an exception" {
				Get-UnityVersion | Should Throw
			}
		}
		Context "Unity is installed in 'C:\Program Files (x86)\Unity'" {
			Mock Get-ItemProperty {	@{ Location="C:\Program Files (x86)\Unity"; Version="5.2"; } }
			It "Should outputs 'C:\Program Files (x86)\Unity'" {
				Get-UnityLocation | Should Be "C:\Program Files (x86)\Unity"
			}
		}
	}
}
