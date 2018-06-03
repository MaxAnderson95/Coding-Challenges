#region Elementary
# 1
Function Function1 {
    Write-Output "Hello World"
}

#2
Function Function2 {
    $Name = Read-Host -Prompt "What is your name?"
    Write-Output "Hello $Name"
}

#3
Function Function3 {
    $Name = Read-Host -Prompt "What is your name?"
    If ($Name -eq "Alice" -or $Name -eq "Bob") {
        Write-Output "Hello $Name"
    }
}

#4
Function Function4 {
    $Counter = 0
    $Number = Read-Host "Enter a number"
    1..$Number | ForEach {$Counter += $_}
    Write-Output $Counter
}

#5
Function Function5 {
    $Counter = 0
    $Multiples = @()
    $Number = Read-Host "Enter a number"
    1..$Number | ForEach {
        If (($_ % 3) -eq 0 -or ($_ % 5) -eq 0) {
            $Multiples += $_
        }
    }
    $Multiples | ForEach {$Counter += $_}
    Write-Output $Counter
}

#6
Function Function6 {
    [Int32]$Number = Read-Host "Enter a number"
    $Selection = Read-Host "Sum or Product?"
    Switch ($Selection) {
        'Sum' {
            $Counter = 0
            1..$Number | ForEach {$Counter += $_}
            Write-Output $Counter
        }
        'Product' {
            Function Factorial($int) {
                if ($int -eq 1) {
                    Return $int
                } Else {
                    Return $int * (Factorial ($int - 1))
                }
            }
            Write-Output $(Factorial($Number))
        }
    }
}

#7 Skipping for now due to PowerShell output limitations
<#
Function Function7 {
    $c = 12
    $a = 1..$c
    $b = 1..$c

    ForEach ($)
}
#>

#8
Function Function8 {
    Param ($Limit = 1000)
    2..$Limit | ForEach {
        $CurrentNumber = $_
        $Divisor = [Math]::Sqrt($CurrentNumber)
        $Prime = $True
        2..$Divisor | ForEach {
            If ($CurrentNumber % $_ -eq 0) {
                $Prime = $False
            }
        }
        If ($Prime) {
            Write-Output $CurrentNumber
        }
    }
}

#9
Function Function9 {
    $SecretNumber = Get-Random -Minimum 1 -Maximum 15
    $Count++
    While ($Guess -ne $SecretNumber) {
        $Guess = Read-Host "Guess the secret number"
        If ($Guess -lt $SecretNumber) {
            Write-Output "Guess higher"
            $Count++
        }
        If ($Guess -gt $SecretNumber) {
            Write-Output "Guess lower"
            $Count++
        }
    }
    Write-Output "You guessed the secret number after $Count tries."
}

Function Function10 {
    $NumberOfLeapYears = 20
    $CurrentYear = (Get-Date).year
    Do {
        $Leap = $False     
        If (($CurrentYear % 4) -eq 0) {         
            #Leap if divisible by 4
            $Leap = $True
            If (($CurrentYear % 100) -eq 0) {
                #Not leap if also divisible by 100
                $Leap = $False
                If (($CurrentYear % 400) -eq 0) {
                    #Unless it's also divisible by 400
                    $Leap = $True
                }
            }
        }
        If ($Leap -eq $True) {
            Write-Output "$CurrentYear"
            $Counter++
        }
        $CurrentYear++   
    } Until ($Counter -eq $NumberOfLeapYears)
}

#endregion