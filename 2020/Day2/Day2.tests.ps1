. $PSScriptRoot\Day2.ps1

[string[]]$sampleDataPart1 = "1-13 r: gqdrspndrpsrjfjx", "5-16 j: jjjjkjjzjjjjjfjzjjj"

Describe "Test Day 2 Functions" {
    It 'Part 1 Should return 2' {
        challenge1version1 -fileInput $sampleDataPart1 | Should -Be 2
    }
    It 'Part 2 Should return 2' {
        challenge2version1 -fileInput $sampleDataPart1 | Should -Be 2
    }
}