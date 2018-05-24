[CmdletBinding()]
Param (

    #A mandatory parameter of the integer type, that is mandatory and accepts pipeline input
    [Parameter(Mandatory=$True,ValueFromPipeline=$True)]
    [Int32]$Minutes

)

#ForEach object piped in
Process {

    #Divide the number of minutes by 60 and round down to determine the number of whole hours
    $Hours = [math]::Truncate($Minutes / 60)

    #Determine the remainder number of minutes by doing minutes modulos 60
    $RemainderMinutes = $Minutes % 60

    #Construct an object with three properties: the original input, the number of whole hours, and the remainder hours
    $Obj = [PSCustomObject] @{
        Input = $Minutes
        Hours = $Hours
        Minutes = $RemainderMinutes
    }

    #Output the object
    Write-Output $Obj

}