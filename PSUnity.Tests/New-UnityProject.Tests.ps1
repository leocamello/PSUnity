#
# New-UnityProject.Tests.ps1
#

Import-Module $PSScriptRoot\..\PSUnity -Force

Describe "New-UnityProject" {
	InModuleScope PSUnity {
		Context "No Unity project exists" {
			It "Should create a new project" {
				New-UnityProject | Should Be $true
			}
		}
	}
}
