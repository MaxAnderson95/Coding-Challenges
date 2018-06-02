[cmdletbinding()]
Param (

    [Parameter(Mandatory=$True)]
    [String]$InputText
)

If ((Test-Path $InputText) -eq $False) {

    Write-Error "Invalid Input Text File"
    Exit

}


$Array = @()

$TextFile = Get-Content $InputText
$Words = $TextFile.Split(" ")
$Words = $Words -replace '[^\w\d]', ''

ForEach ($Word in $Words) {

    If (($Array | Where-Object {$_.word -eq $Word}) -eq $Null) {

        $Obj = [pscustomobject]@{

            "Word" = $Word
            "Frequency" = 1

        }

        $Array += $Obj

    }

    Else {

        ($Array | Where-Object {$_.word -eq $Word}).frequency ++

    }

}

Write-Output $Array | Sort-Object -Property Frequency -Descending