. $PSScriptRoot\Day3.ps1

$sampleData = @(
    "..##.......",
    "#...#...#..",
    ".#....#..#.",
    "..#.#...#.#",
    ".#...##..#.",
    "..#.##.....",
    ".#.#.#....#",
    ".#........#",
    "#.##...#...",
    "#...##....#",
    ".#..#...#.#"
)
Describe "Test Day 2 Functions" {
    It 'Part 1 Should return 2' {
        part1 -fileInput $sampleDataPart1 | Should -Be 2
    }
}