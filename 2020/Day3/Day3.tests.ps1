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
    ".#..#...#.#",
    "....#...#.#"
)

$slope = @{
    down  = 1
    right = 3
}

$startingPosition = @{
    x = 1
    y = 1
}
Describe "Test Day 3 Functions" {
    It "getSlopePosition should return x 4 and y 2" {
        $nextPosition = getSlopePosition -position $startingPosition -slope $slope -width $sampleData[0].Length 
        
        $nextPosition.x | Should -Be 4
        $nextPosition.y | Should -Be 2
    }

    It "Part 1 should return 7" {
        part1 -fileInput $sampleData -slope $slope | Should -Be 7
    }

    It "Part 2 should return 336" {
        part2 -fileInput $sampleData | Should -Be 336
    }
}