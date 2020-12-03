<#
.SYNOPSIS
--- Day 1: Report Repair ---
After saving Christmas five years in a row, you've decided to take a vacation at a nice resort on a tropical island. Surely, Christmas will go on without you.

The tropical island has its own currency and is entirely cash-only. The gold coins used there have a little picture of a starfish; the locals just call them stars. None of the currency exchanges seem to have heard of them, but somehow, you'll need to find fifty of these coins by the time you arrive so you can pay the deposit on your room.

To save your vacation, you need to get all fifty stars by December 25th.

Collect stars by solving puzzles. Two puzzles will be made available on each day in the Advent calendar; the second puzzle is unlocked when you complete the first. Each puzzle grants one star. Good luck!

Before you leave, the Elves in accounting just need you to fix your expense report (your puzzle input); apparently, something isn't quite adding up.

Specifically, they need you to find the two entries that sum to 2020 and then multiply those two numbers together.

For example, suppose your expense report contained the following:

1721
979
366
299
675
1456
In this list, the two entries that sum to 2020 are 1721 and 299. Multiplying them together produces 1721 * 299 = 514579, so the correct answer is 514579.

Of course, your expense report is much larger. Find the two entries that sum to 2020; what do you get if you multiply them together?

.AUTHOR
nullptr
#>

$expenseReport = Get-Content -Path $PSScriptRoot\..\inputs\inputday1.txt

function challenge1version1($expenseReport) {
    foreach ($addend1 in $expenseReport) {
        foreach ($addend2 in $expenseReport) {
            $sumOfAdd = [int]$addend2 + [int]$addend1
            if ($sumOfAdd -eq 2020) {
                $sumOfMultiply = [int]$addend2 * [int]$addend1
            }
        }
    }
    return $sumOfMultiply
}

function challenge1version2 {
    foreach ($item in $expenseReport) {
        Write-Output ("Working on {0}" -f $item)
        if([int]$item -gt 2020){
            Write-Output ("Number {0} is greater than 2020.. skipping" -f $item)
        } else {
            $remainder = 2020 - [int]$item
            Write-Output ("remainder {0}" -f $remainder)
            if($expenseReport -contains $remainder){
                return [int]$item * $remainder
            }
        }
    }
}


function challenge2version1($expenseReport){
    foreach ($addend1 in $expenseReport) {
        foreach ($addend2 in $expenseReport) {
            foreach ($addend3 in $expenseReport) {
                $sumOfAdd = [int]$addend1 + [int]$addend2 + [int]$addend3
                if($sumOfAdd -eq 2020){
                    $sumOfMultiplication = [int]$addend1 * [int]$addend2 * [int]$addend3
                }
            }
        }
    }
    return $sumOfMultiplication
}


