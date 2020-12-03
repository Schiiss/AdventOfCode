. $PSScriptRoot\Day1.ps1

[int[]]$sampleDataPart1 = 1436, 584
[int[]]$sampleDataPart2 = 245, 131, 1644

Describe "Test Day 1 Functions" {
    It 'Part 1 Should return 838624' {
        challenge1version1 -expenseReport $sampleDataPart1 | Should -Be 838624
    }
    It 'Part 2 Should return 52764180' {
        challenge2version1 -expenseReport $sampleDataPart2 | Should -Be 52764180
    }
}