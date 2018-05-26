# Time Conversion Coding Challenge
[Original Idea](https://coderbyte.com/editor/guest:Time%20Convert:Python)

## Challenge
Using the PowerShell language, have a function take an input integer parameter representing a number of minutes, and return
the number of hours and remainder minutes. Ensure the following:
* The outputs are returned as a PSCustomobject with three properties: Input, Hours, Minutes
* The function/script supports pipeline input

#### Sample Cases
```
Input:     126
Output:    Input Hours Minutes
           ----- ----- -------
             126     2       6
             
Input:     45
Output:    Input Hours Minutes
           ----- ----- -------
              45     0      45
```

## Solution
The code for the solution is contained in the [MinutesToHours.ps1](MinutesToHours.ps1)

#### Usage
```PowerShell
PS C:> .\MinutesToHours.ps1 -Minutes 126
Input Hours Minutes
----- ----- -------
  126     2       6
```

```PowerShell
PS C:> .\MinutesToHours.ps1 -Minutes 45
Input Hours Minutes
----- ----- -------
   45     0      45
```

```PowerShell
126, 45 | .\MinutesToHours.ps1
Input Hours Minutes
----- ----- -------
  126     2       6
   45     0      45
```
