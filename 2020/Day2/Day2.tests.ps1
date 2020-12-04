. $PSScriptRoot\Day2.ps1

[string[]]$sampleData = "1-13 r: gqdrspndrpsrjfjx", "5-16 j: jjjjkjjzjjjjjfjzjjj"

Describe "Test Day 2 Functions" {
    It 'Part 1 Should return 2' {
        part1 -fileInput $sampleData | Should -Be 2
    }
    It 'Part 2 Should return 2' {
        part2 -fileInput $sampleData | Should -Be 2
    }
}