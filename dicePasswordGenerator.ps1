function Generate-Password { 
    Param (
    [Parameter(Mandatory=$true)]
    $pathtoList
    )

 $wordList = Get-Content -path $pathtoList


$wordTable = @{}
foreach ($line in $wordList) {
    $wordTable.Add($line.Split("")[0], $line.Split("")[1])
    }

function Generate-FiveDigitNumber {
$fiveDigitNumber = ""
    for ($i=1; $i -le 5; $i++) {
        $diceRoll = Get-Random -Minimum 1 -Maximum 6 
        $fiveDigitNumber = $fiveDigitNumber.ToString() + $diceRoll.ToString()
            }
        $fiveDigitNumber.ToString()
     }
$numberlist = @()
for($i =1; $i -le 6; $i++) {
$numberList += Generate-FiveDigitNumber
}

foreach($num in $numberlist){
    $wordTable.Get_Item($num)
    }
}