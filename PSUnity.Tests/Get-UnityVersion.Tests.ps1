#
# Get-UnityVersion.Tests.ps1
#

Import-Module $PSScriptRoot\..\PSUnity -Force

Describe "Get-UnityVersion" {
	Context "Unity version 5.0.1 is installed" {
		It "Should outputs '5.0.1'" {
			Get-UnityVersion | Should Be "5.0.1"
		}
	}
}
