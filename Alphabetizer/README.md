# Alphabetizer Coding Challenge

[Original Idea](https://coderbyte.com/editor/guest:Alphabet%20Soup:Python)

## Challenge
Using the PowerShell language, have a function take an input string parameter, and return the string with the letters in alphabetical order. (ie. *hello* becomes *ehllo*). Ensure the following:
* Ensure word order and spaces are maintained (ie. *hello world* becomes *ehllo dlorw*)
* Ensure numbers and symbols are filtered out of the output
* Ensure the output is in *Proper Case*
* Ensure the function/script supports pipeliene input

#### Sample Cases
```
Input:     "powershell"
Output:    "Eehlloprsw"

Input:     "hello world"
Output:    "Ehllo Dlorw"
```

## Solution
The code for the solution is contained in the [Alphabetizer.ps1](Alphabetizer.ps1)

#### Usage
```PowerShell
PS C:> .\Alphabetizer.ps1 -InputText "powershell"
Eehlloprsw
```

```PowerShell
PS C:> .\Alphabetizer.ps1 -InputText "hello world"
Ehllo Dlorw
```

```PowerShell
PS C:> "pipeline input","works as expected" | .\Alphabetizer.ps1
Eeiilnpp Inptu
Korsw As Cdeeeptx
```
