[CmdletBinding()]
Param (

    [Parameter(Mandatory=$True,ValueFromPipeline=$True)]
    [String]$InputText

)

Begin {
    
    #Define the alphabet in an array
    $Alphabet = @("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z")

}

Process {

    #Define an empty array to hold the alphabatized output text
    [Array]$OutputText = @()

    #Loop through each word in the input text. It determines words by where the spaces lie
    #This is done to keep word order the same
    ForEach ($Word in $InputText.Split(' ')) {

        #Create an empty array to hold the alphabatized word
        [Array]$OutputWord = @()

        #Loop through each letter in the alphabet. Since it's an array, it will be in order
        ForEach ($Letter in $Alphabet) {

            #Loop through each character in the current word
            ForEach ($Char in $Word.GetEnumerator()) {

                #If the current character matches the current letter of the alphabet
                If ($Char -eq $Letter) {

                    #Add the current character to the outputword array
                    $OutputWord += $Char

                }

            }

        }

        #Take the outputword array and join it into a single string. Then add it to the output text array
        $OutputText += $($OutputWord -Join "")

    }

    #Output the text array in proper title case, while joining the words in the output text array back with spaces
    Write-Output ((Get-Culture).TextInfo).ToTitleCase(($OutputText -Join " ").ToLower())

}

End {

}