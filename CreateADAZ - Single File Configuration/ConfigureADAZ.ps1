<#
Created By: Alan Newingham
Git:
Purpose: In creating an AD account creator, I realized updating the script can be a bit... confusing. 
This is my take on Attempting to make configuration a little bit easier. 
Date: 11/8/2020
Released: 11/10/2020

Features: 
Encoded document as base64 as I ABSOLUTELY hate having more than one script run. 
Now you can run settings and build for your environment. Just change the text fields. 
Script when ran will assist in configuring the Create AD/Azure accounts per organization. 
Run settings and modify as per your organization. 
CreateADAZ.ps1 builds user accounts based off first letter of first name and last letter of last name. So Alexander Hamilton looks like ahamilton. 

I Wrote the original script to assist with AD account creation, however there is no settings field. So you have to know PowerShell to fix it. At least this way I guide you with a generic company setup and through extrapolation you can figure out what is needed to change, and what cannot get changed. 
When you click Apply Changes this script decodes the original text with markers for this script to modify. 
This script then replaces the text with text specified in areas specified. 
Then renames the .txt to .ps1 and attempts to run it. 
#>

$Base64string = 'CgAgACAAIAAgACAAIAAgACAAPABUAGUAeAB0AEIAbABvAGMAawAgAEgAbwByAGkAegBvAG4AdABhAGwAQQBsAGkAZwBuAG0AZQBuAHQAPQAiAFIAaQBnAGgAdAAiACAASABlAGkAZwBoAHQAPQAiADIAMwAiACAATQBhAHIAZwBpAG4APQAiADAALAA0ADkALAAxADQAMgAsADAAIgAgAFQAZQB4AHQAVwByAGEAcABwAGkAbgBnAD0AIgBXAHIAYQBwACIAIABUAGUAeAB0AD0AIgBMAGEAcwB0ACAATgBhAG0AZQAiACAAVgBlAHIAdABpAGMAYQBsAEEAbABpAGcAbgBtAGUAbgB0AD0AIgBUAG8AcAAiACAAVwBpAGQAdABoAD0AIgA4ADYAIgAvAD4ADQAKACAAIAAgACAAIAAgACAAIAA8AFQAZQB4AHQAQgBsAG8AYwBrACAASABvAHIAaQB6AG8AbgB0AGEAbABBAGwAaQBnAG4AbQBlAG4AdAA9ACIAUgBpAGcAaAB0ACIAIABIAGUAaQBnAGgAdAA9ACIAMgAzACIAIABNAGEAcgBnAGkAbgA9ACIAMAAsADIANQAsADEANAAyACwAMAAiACAAVABlAHgAdABXAHIAYQBwAHAAaQBuAGcAPQAiAFcAcgBhAHAAIgAgAFQAZQB4AHQAPQAiAEYAaQByAHMAdAAgAE4AYQBtAGUAIgAgAFYAZQByAHQAaQBjAGEAbABBAGwAaQBnAG4AbQBlAG4AdAA9ACIAVABvAHAAIgAgAFcAaQBkAHQAaAA9ACIAOAAzACIALwA+AA0ACgAgACAAIAAgACAAIAAgACAAPABDAG8AbQBiAG8AQgBvAHgAIABIAG8AcgBpAHoAbwBuAHQAYQBsAEEAbABpAGcAbgBtAGUAbgB0AD0AIgBMAGUAZgB0ACIAIABIAGUAaQBnAGgAdAA9ACIAMgAzACIAIABNAGEAcgBnAGkAbgA9ACIAMQA0ADAALAAxADcAMAAsADAALAAwACIAIABWAGUAcgB0AGkAYwBhAGwAQQBsAGkAZwBuAG0AZQBuAHQAPQAiAFQAbwBwACIAIABOAGEAbQBlAD0AIgBkAGUAcABhAHIAdABfAGMAbQBiAHgAIgAgAFcAaQBkAHQAaAA9ACIAMQAyADAAIgAvAD4ADQAKACAAIAAgACAAIAAgACAAIAA8AEMAbwBtAGIAbwBCAG8AeAAgAE4AYQBtAGUAPQAiAGoAYgB0AGwAdABfAGMAbQBiAHgAIgAgAEgAbwByAGkAegBvAG4AdABhAGwAQQBsAGkAZwBuAG0AZQBuAHQAPQAiAEwAZQBmAHQAIgAgAEgAZQBpAGcAaAB0AD0AIgAyADMAIgAgAE0AYQByAGcAaQBuAD0AIgAxADQAMAAsADEAOQA1ACwAMAAsADAAIgAgAFYAZQByAHQAaQBjAGEAbABBAGwAaQBnAG4AbQBlAG4AdAA9ACIAVABvAHAAIgAgAFcAaQBkAHQAaAA9ACIAMQAyADAAIgAvAD4ADQAKACAAIAAgACAAIAAgACAAIAA8AFQAZQB4AHQAQgBsAG8AYwBrACAASABvAHIAaQB6AG8AbgB0AGEAbABBAGwAaQBnAG4AbQBlAG4AdAA9ACIAUgBpAGcAaAB0ACIAIABIAGUAaQBnAGgAdAA9ACIAMgAzACIAIABNAGEAcgBnAGkAbgA9ACIAMAAsADIANAAxACwAMQA0ADIALAAwACIAIABUAGUAeAB0AFcAcgBhAHAAcABpAG4AZwA9ACIAVwByAGEAcAAiACAAVABlAHgAdAA9ACIAQwBvAHUAbgB0AHIAeQAiACAAVgBlAHIAdABpAGMAYQBsAEEAbABpAGcAbgBtAGUAbgB0AD0AIgBUAG8AcAAiACAAVwBpAGQAdABoAD0AIgA2ADMAIgAvAD4ADQAKACAAIAAgACAAIAAgACAAIAA8AFQAZQB4AHQAQgBsAG8AYwBrACAASABvAHIAaQB6AG8AbgB0AGEAbABBAGwAaQBnAG4AbQBlAG4AdAA9ACIAUgBpAGcAaAB0ACIAIABIAGUAaQBnAGgAdAA9ACIAMgAzACIAIABNAGEAcgBnAGkAbgA9ACIAMAAsADIAMQA4ACwAMQA0ADAALAAwACIAIABUAGUAeAB0AFcAcgBhAHAAcABpAG4AZwA9ACIAVwByAGEAcAAiACAAVABlAHgAdAA9ACIAUwB0AGEAdABlACIAIABWAGUAcgB0AGkAYwBhAGwAQQBsAGkAZwBuAG0AZQBuAHQAPQAiAFQAbwBwACIAIABXAGkAZAB0AGgAPQAiADQAMwAiAC8APgANAAoAIAAgACAAIAAgACAAIAAgADwAQwBvAG0AYgBvAEIAbwB4ACAATgBhAG0AZQA9ACIAcwB0AF8AYwBtAGIAeAAiACAASABvAHIAaQB6AG8AbgB0AGEAbABBAGwAaQBnAG4AbQBlAG4AdAA9ACIATABlAGYAdAAiACAASABlAGkAZwBoAHQAPQAiADIAMwAiACAATQBhAHIAZwBpAG4APQAiADEANAAwACwAMgAxADkALAAwACwAMAAiACAAVgBlAHIAdABpAGMAYQBsAEEAbABpAGcAbgBtAGUAbgB0AD0AIgBUAG8AcAAiACAAVwBpAGQAdABoAD0AIgAxADIAMAAiAC8APgANAAoAIAAgACAAIAAgACAAIAAgADwAQwBvAG0AYgBvAEIAbwB4ACAATgBhAG0AZQA9ACIAYwB5AF8AYwBtAGIAeAAiACAASABvAHIAaQB6AG8AbgB0AGEAbABBAGwAaQBnAG4AbQBlAG4AdAA9ACIATABlAGYAdAAiACAASABlAGkAZwBoAHQAPQAiADIAMwAiACAATQBhAHIAZwBpAG4APQAiADEANAAwACwAMgA0ADMALAAwACwAMAAiACAAVgBlAHIAdABpAGMAYQBsAEEAbABpAGcAbgBtAGUAbgB0AD0AIgBUAG8AcAAiACAAVwBpAGQAdABoAD0AIgAxADIAMAAiAC8APgANAAoAIAAgACAAIAA8AC8ARwByAGkAZAA+AA0ACgA8AC8AVwBpAG4AZABvAHcAPgANAAoAIgBAAA0ACgANAAoADQAKACMAUAByAGUAdAB0AHkAIABtAHUAYwBoACAAZABlAGYAYQB1AGwAdAAgAGMAcgBlAGEAdABpAG8AbgAgAG8AZgAgAHQAaABlACAAcABhAGcAZQAgAGkAbgAgAG0AZQBtAG8AcgB5AC4AIAANAAoAJABXAGkAbgBkAG8AdwAgAD0AIABbAFcAaQBuAGQAbwB3AHMALgBNAGEAcgBrAHUAcAAuAFgAYQBtAGwAUgBlAGEAZABlAHIAXQA6ADoAUABhAHIAcwBlACgAJABYAGEAbQBsACkADQAKACMATABlAHQAJwBzACAAYgB1AGkAbABkACAAdABoAGUAIAB2AGEAcgBpAGEAYgBsAGUAcwAgAHQAYQBiAGwAZQAgAA0ACgANAAoAIwBSAGUAcABsAGEAYwBlACAAdABoAGUAIABiAGUAbABvAHcAIABsAGkAbgBlACAAdwBpAHQAaAAgAGwAaQBuAGUAIAA2ADIAIAB0AG8AIAByAGUAbQBvAHYAZQAgAG8AdQB0AHAAdQB0AHQAaQBuAGcAIAB0AGgAZQAgAHYAYQByAGkAYQBiAGwAZQAgAGwAaQBzAHQAIAB0AG8AIAB0AGgAZQAgAGMAbwBuAHMAbwBsAGUAIAB0AG8AIAB0AGUAcwB0AC4AIAANAAoAIwAkAHgAbQBsAC4AUwBlAGwAZQBjAHQATgBvAGQAZQBzACgAIgAvAC8AKgBbAEAATgBhAG0AZQBdACIAKQAgAHwAIABGAG8AcgBFAGEAYwBoAC0ATwBiAGoAZQBjAHQAIAB7ACAAUwBlAHQALQBWAGEAcgBpAGEAYgBsAGUAIAAtAE4AYQBtAGUAIAAkAF8ALgBOAGEAbQBlACAALQBWAGEAbAB1AGUAIAAkAFcAaQBuAGQAbwB3AC4ARgBpAG4AZABOAGEAbQBlACgAJABfAC4ATgBhAG0AZQApAH0ADQAKAA0ACgBbAHgAbQBsAF0AJAB4AG0AbAAgAD0AIAAkAFgAYQBtAGwADQAKACQAeABtAGwALgBTAGUAbABlAGMAdABOAG8AZABlAHMAKAAiAC8ALwAqAFsAQABOAGEAbQBlAF0AIgApACAAfAAgAEYAbwByAEUAYQBjAGgALQBPAGIAagBlAGMAdAAgAHsAIABTAGUAdAAtAFYAYQByAGkAYQBiAGwAZQAgAC0ATgBhAG0AZQAgACQAXwAuAE4AYQBtAGUAIAAtAFYAYQBsAHUAZQAgACQAVwBpAG4AZABvAHcALgBGAGkAbgBkAE4AYQBtAGUAKAAkAF8ALgBOAGEAbQBlACkAIAB8ACAAVwByAGkAdABlAC0ASABvAHMAdAAgACQAXwAuAE4AYQBtAGUAfQANAAoADQAKACMARABlAGYAYQB1AGwAdAAgAEcAcgBvAHUAcABzACAAQQByAHIAYQB5ACAAYgB1AGkAbAB0ACAAZgByAG8AbQAgAEMAbwBuAGYAaQBnAHUAcgBhAHQAaQBvAG4ADQAKAGYAbwByAGUAYQBjAGgAIAAoACQAZAAgAGkAbgAgACQAZABlAHAAYQByAHQAbQBlAG4AdABzACkAIAB7ACAAIAAgACAAIAAgACAAIAAgACAAIAAgAA0ACgAgACAAIAAgACQAZABlAHAAYQByAHQAXwBjAG0AYgB4AC4ASQB0AGUAbQBzAC4AYQBkAGQAKAAiACQAZAAiACkAIAANAAoAIAAgACAAIAB9AA0ACgANAAoAIwBJAEYAIABzAGEAdABlAG0AZQBuAHQAIAB0AGgAYQB0ACAAZgBpAGwAbABzACAAaQBuACAASgBvAGIAIAB0AGkAdABsAGUAcwAgAGkAbgAgAHQAaABlACAAYwBvAG0AYgBvACAAYgBvAHgAIAB3AGgAZQBuACAAZABlAHAAYQByAHQAbQBlAG4AdAAgAGkAcwAgAHMAZQBsAGUAYwB0AGUAZAAuAA0ACgAjAEEAcgByAGEAeQAgAGIAdQBpAGwAdAAgAGYAcgBvAG0AIABDAG8AbgBmAGkAZwB1AHIAYQB0AGkAbwBuAA0ACgAtAGkAZgBzAHQAYQB0AGUAbQBlAG4AdABBAFIAUgBBAFkADQAKAA0ACgANAAoAIwBDAG8AdQBuAHQAcgB5ACAAQQByAHIAYQB5ACAAYgB1AGkAbABkAHMAIAB0AGgAZQAgAGMAbwB1AG4AdAByAHkAIABsAGkAcwB0AC4AIAANAAoAIwBBAHIAcgBhAHkAIABiAHUAaQBsAHQAIABmAHIAbwBtACAAQwBvAG4AZgBpAGcAdQByAGEAdABpAG8AbgANAAoAZgBvAHIAZQBhAGMAaAAgACgAJABjACAAaQBuACAAJABjAG8AdQBuAHQAcgB5AEMAbwBkAGUAcwApACAAewAgACAAIAAgACAAIAAgACAAIAAgACAAIAANAAoAIAAgACAAIAAkAGMAeQBfAGMAbQBiAHgALgBJAHQAZQBtAHMALgBhAGQAZAAoACIAJABjACIAKQAgAA0ACgAgACAAIAAgAH0AIAAgAA0ACgANAAoAIwBTAHQAYQB0AGUAcwAgAEEAcgByAGEAeQAgAGIAdQBpAGwAZABzACAAdABoAGUAIABzAHQAYQB0AGUAcwAgAGwAaQBzAHQALgAgAA0ACgAjAEEAcgByAGEAeQAgAGIAdQBpAGwAdAAgAGYAcgBvAG0AIABDAG8AbgBmAGkAZwB1AHIAYQB0AGkAbwBuAA0ACgBmAG8AcgBlAGEAYwBoACAAKAAkAHMAIABpAG4AIAAkAHMAdABhAHQAZQBDAG8AZABlAHMAKQAgAHsAIAAgACAAIAAgACAAIAAgACAAIAAgACAADQAKACAAIAAgACAAJABzAHQAXwBjAG0AYgB4AC4ASQB0AGUAbQBzAC4AYQBkAGQAKAAiACQAcwAiACkAIAANAAoAIAAgACAAIAB9ACAAIAANAAoADQAKAA0ACgANAAoAIwBDAHIAZQBhAHQAZQAgAEMAbABpAGMAawAgAEkAbgB2AG8AawBlACAAQgB1AHQAdABvAG4AcwAgAFcAbwByAGsADQAKACQAYQB6AF8AYgB0AG4ALgBhAGQAZABfAEMAbABpAGMAawAuAEkAbgB2AG8AawBlACgAewANAAoADQAKACAAIAAgACAAIwBHAHIAYQBiACAAdABoAGUAIABVAHMAZQByAHMAIABGAGkAcgBzAHQAIABhAG4AZAAgAEwAYQBzAHQAIABuAGEAbQBlACAAdAB3AGkAYwBlACwAIABvAG4AYwBlACAAZgBvAHIAIABsAG8AdwBlAHIAYwBhAHMAZQAsACAAbwBuAGMAZQAgAGYAbwByACAAdQBwAHAAZQByAGMAYQBzAGUALgAgAA0ACgAgACAAIAAgACQAZgBuACAAPQAgACQAZgBpAHIAcwB0AF8AdAB4AGIAeAAuAFQAZQB4AHQADQAKACAAIAAgACAAJABmAG4AQwAgAD0AIAAkAGYAaQByAHMAdABfAHQAeABiAHgALgBUAGUAeAB0AA0ACgAgACAAIAAgACQAbABuACAAPQAgACQAbABhAHMAdABfAHQAeABiAHgALgBUAGUAeAB0AA0ACgAgACAAIAAgACQAbABuAEMAIAA9ACAAJABsAGEAcwB0AF8AdAB4AGIAeAAuAFQAZQB4AHQADQAKACAAIAAgACAAIwBUAGEAawBlACAAVwBoAGkAdABlAFMAcABhAGMAZQAgAE8AZgBmACAATgBhAG0AZQBzACAASQBmACAAUAByAGUAcwBlAG4AdAANAAoAIAAgACAAIAAkAGYAbgBDACAAPQAgACQAZgBuAEMALgBUAHIAaQBtACgAKQANAAoAIAAgACAAIAAkAGwAbgBDACAAPQAgACQAbABuAEMALgBUAHIAaQBtACgAKQANAAoAIAAgACAAIAAkAGYAbgAgAD0AIAAkAGYAbgAuAFQAcgBpAG0AKAApAA0ACgAgACAAIAAgACQAbABuACAAPQAgACQAbABuAC4AVAByAGkAbQAoACkADQAKACAAIAAgACAAIwBMAG8AdwBlAHIAYwBhAHMAZQAgAGEAbABsACAAbABlAHQAdABlAHIAcwAgAA0ACgAgACAAIAAgACQAZgBuACAAPQAgACQAZgBuAC4AVABvAEwAbwB3AGUAcgAoACkADQAKACAAIAAgACAAJABsAG4AIAA9ACAAJABsAG4ALgBUAG8ATABvAHcAZQByACgAKQANAAoAIAAgACAAIAAjAEQAcgBvAHAAIAB0AG8AIABvAG4AbAB5ACAAdABoAGUAIABmAGkAcgBzAHQAIABsAGUAdAB0AGUAcgANAAoAIAAgACAAIAAkAGYAbAAgAD0AIAAkAGYAbgAuAFMAdQBiAFMAdAByAGkAbgBnACgAMAAsADEAKQANAAoAIAAgACAAIAAjAEMAcgBlAGEAdABlACAAZQBtAGEAaQBsACAAYQBkAGQAcgBlAHMAcwAgAGYAaQByAHMAdAAgAGwAZQB0AHQAZQByACAAbwBmACAAZgBpAHIAcwB0ACAAbgBhAG0AZQAgAHAAbAB1AHMAIABsAGEAcwB0ACAAbgBhAG0AZQAuACAAVQBzAGUAZAAgAGYAbwByACAAbwB0AGgAZQByACAAdABoAGkAbgBnAHMAIABhAHMAIAB3AGUAbABsAC4AIAANAAoAIAAgACAAIAAkAGUAbQBhAGkAbABwAHIAZQBmAGkAeAAgAD0AIAAkAGYAbAArACQAbABuAA0ACgAgACAAIAAgACMAQgB1AGkAbABkACAARABpAHMAcABsAGEAeQAgAE4AYQBtAGUADQAKACAAIAAgACAAJABkAG4AIAA9ACAAJABmAG4AQwAgACsAIAAiACAAIgAgACsAIAAkAGwAbgBDAA0ACgAgACAAIAAgACMAQwBvAG4AcwB0AHIAdQBjAHQAIABzAHUAZgBmAGkAYwAgAG8AZgAgAGUAbQBhAGkAbAAgAGEAZABkAHIAZQBzAHMALgANAAoAIAAgACAAIAAkAGUAbQBhAGkAbABzAHUAZgBmAGkAeAAgAD0AIAAiAEAAZQBtAGEAaQBsAC4AYwBvAG0AIgANAAoAIAAgACAAIAAjAE0AZQByAGcAZQAgAGIAbwB0AGgAIAB2AGEAcgBpAGEAYgBsAGUAcwAgAHQAbwBnAGUAdABoAGUAcgAgAHQAbwAgAGcAZQB0ACAAdABoAGUAIABlAG0AYQBpAGwAIABhAGQAZAByAGUAcwBzAA0ACgAgACAAIAAgACQAZQBtACAAPQAgACQAZQBtAGEAaQBsAHAAcgBlAGYAaQB4ACsAJABlAG0AYQBpAGwAcwB1AGYAZgBpAHgADQAKACAAIAAgACAAJABjAGgAYQBuAGcAZQBQAGEAcwBzAHcAbwByAGQAYQB0AEwAbwBnAGkAbgAgAD0AIAAnACQAVAByAHUAZQAnAA0ACgAgACAAIAAgACMAQwByAGUAYQB0AGUAIABwAGEAcwBzAHcAbwByAGQAIABwAHIAbwBmAGkAbABlACAAZgBvAHIAIABBAHoAdQByAGUAQQBEACAAYwByAGUAYQB0AGkAbwBuACwAIABjAG8AcABpAGUAZAAgAGQAaQByAGUAYwB0AGwAeQAgAGYAcgBvAG0AIABNAGkAYwByAG8AcwBvAGYAdAAuAA0ACgAgACAAIAAgACQAUABhAHMAcwB3AG8AcgBkAFAAcgBvAGYAaQBsAGUAPQBOAGUAdwAtAE8AYgBqAGUAYwB0ACAALQBUAHkAcABlAE4AYQBtAGUAIABNAGkAYwByAG8AcwBvAGYAdAAuAE8AcABlAG4ALgBBAHoAdQByAGUAQQBEAC4ATQBvAGQAZQBsAC4AUABhAHMAcwB3AG8AcgBkAFAAcgBvAGYAaQBsAGUADQAKACAAIAAgACAAJABQAGEAcwBzAHcAbwByAGQAUAByAG8AZgBpAGwAZQAuAFAAYQBzAHMAdwBvAHIAZAA9ACIAMwBSAHYAMAB5ADEAcQAzADkALwBjAGgAcwB5ACIADQAKACAAIAAgACAAIwBMAGUAdAAgAHUAcwAgAHAAdQB0ACAAaQB0ACAAYQBsAGwAIAB0AG8AZwBlAHQAaABlAHIAIABhAG4AZAAgAG8AdQB0AHAAdQB0ACAAdABvACAAdABoAGUAIABjAG8AbgBzAG8AbABlACAAdABoAGUAIABjAG8AbQBtAGEAbgBkACAAeQBvAHUAIABuAGUAZQBkACAAdABvACAAcgB1AG4ALgAgAA0ACgAgACAAIAAgACQAQQByAGkAYwBHACAAPQAgACIATgBlAHcALQBBAHoAdQByAGUAQQBEAFUAcwBlAHIAIAAtAEQAaQBzAHAAbABhAHkATgBhAG0AZQAgACIAIgAkAGQAbgAiACIAIAAtAEcAaQB2AGUAbgBOAGEAbQBlACAAIgAiACQAZgBuACIAIgAgAC0AUwB1AHIATgBhAG0AZQAgACIAIgAkAGwAbgAiACIAIAAtAFUAcwBlAHIAUAByAGkAbgBjAGkAcABhAGwATgBhAG0AZQAgACIAIgAkAGUAbQAiACIAIAAtAFUAcwBhAGcAZQBMAG8AYwBhAHQAaQBvAG4AIABVAFMAIAAtAE0AYQBpAGwATgBpAGMAawBOAGEAbQBlACAAIgAiACQAZQBtAGEAaQBsAHAAcgBlAGYAaQB4ACIAIgAgAC0ATABpAGMAZQBuAHMAZQBBAHMAcwBpAGcAbgBtAGUAbgB0ACAAYwBvAG4AdABvAHMAbwA6AEUATgBUAEUAUgBQAFIASQBTAEUAUABBAEMASwAgAC0AUABhAHMAcwB3AG8AcgBkAFAAcgBvAGYAaQBsAGUAIAAiACIAJABQAGEAcwBzAHcAbwByAGQAUAByAG8AZgBpAGwAZQAiACIAIAAtAEEAYwBjAG8AdQBuAHQARQBuAGEAYgBsAGUAZAAgACIAIgAkAGMAaABhAG4AZwBlAFAAYQBzAHMAdwBvAHIAZABhAHQATABvAGcAaQBuACIAIgAiAA0ACgAgACAAIAAgAFcAcgBpAHQAZQAtAEgAbwBzAHQAIAAgACQAQQByAGkAYwBHAA0ACgB9ACkADQAKAA0ACgANAAoAJABhAGQAXwBiAHQAbgAuAGEAZABkAF8AQwBsAGkAYwBrAC4ASQBuAHYAbwBrAGUAKAB7AA0ACgANAAoAIAAgACAAIAAkAGMAbwAgAD0AIAAkAGMAeQBfAGMAbQBiAHgALgBUAGUAeAB0AA0ACgAgACAAIAAgACQAcwB0ACAAPQAgACQAcwB0AF8AYwBtAGIAeAAuAFQAZQB4AHQAIAANAAoAIAAgACAAIAAkAGYAbgAgAD0AIAAkAGYAaQByAHMAdABfAHQAeABiAHgALgBUAGUAeAB0AA0ACgAgACAAIAAgACQAZgBuAEMAIAA9ACAAJABmAGkAcgBzAHQAXwB0AHgAYgB4AC4AVABlAHgAdAANAAoAIAAgACAAIAAkAGwAbgAgAD0AIAAkAGwAYQBzAHQAXwB0AHgAYgB4AC4AVABlAHgAdAANAAoAIAAgACAAIAAkAGwAbgBDACAAPQAgACQAbABhAHMAdABfAHQAeABiAHgALgBUAGUAeAB0AA0ACgAgACAAIAAgACMAVABhAGsAZQAgAFcAaABpAHQAZQBTAHAAYQBjAGUAIABPAGYAZgAgAE4AYQBtAGUAcwAgAEkAZgAgAFAAcgBlAHMAZQBuAHQADQAKACAAIAAgACAAJABmAG4AQwAgAD0AIAAkAGYAbgBDAC4AVAByAGkAbQAoACkADQAKACAAIAAgACAAJABsAG4AQwAgAD0AIAAkAGwAbgBDAC4AVAByAGkAbQAoACkADQAKACAAIAAgACAAJABmAG4AIAA9ACAAJABmAG4ALgBUAHIAaQBtACgAKQANAAoAIAAgACAAIAAkAGwAbgAgAD0AIAAkAGwAbgAuAFQAcgBpAG0AKAApAA0ACgAgACAAIAAgACMATABvAHcAZQByAGMAYQBzAGUAIABhAGwAbAAgAGwAZQB0AHQAZQByAHMAIAANAAoAIAAgACAAIAAkAGYAbgAgAD0AIAAkAGYAbgAuAFQAbwBMAG8AdwBlAHIAKAApAA0ACgAgACAAIAAgACQAbABuACAAPQAgACQAbABuAC4AVABvAEwAbwB3AGUAcgAoACkADQAKACAAIAAgACAAIwBEAHIAbwBwACAAdABvACAAbwBuAGwAeQAgAHQAaABlACAAZgBpAHIAcwB0ACAAbABlAHQAdABlAHIADQAKACAAIAAgACAAJABmAGwAIAA9ACAAJABmAG4ALgBTAHUAYgBTAHQAcgBpAG4AZwAoADAALAAxACkADQAKACAAIAAgACAAIwBDAHIAZQBhAHQAZQAgAGUAbQBhAGkAbAAgAGEAZABkAHIAZQBzAHMAIABmAGkAcgBzAHQAIABsAGUAdAB0AGUAcgAgAG8AZgAgAGYAaQByAHMAdAAgAG4AYQBtAGUAIABwAGwAdQBzACAAbABhAHMAdAAgAG4AYQBtAGUALgAgAFUAcwBlAGQAIABmAG8AcgAgAG8AdABoAGUAcgAgAHQAaABpAG4AZwBzACAAYQBzACAAdwBlAGwAbAAuACAADQAKACAAIAAgACAAJABlAG0AYQBpAGwAcAByAGUAZgBpAHgAIAA9ACAAJABmAGwAKwAkAGwAbgANAAoAIAAgACAAIAAjAEIAdQBpAGwAZAAgAEQAaQBzAHAAbABhAHkAIABOAGEAbQBlAA0ACgAgACAAIAAgACQAZABuACAAPQAgACQAZgBuAEMAIAArACAAIgAgACIAIAArACAAJABsAG4AQwANAAoAIAAgACAAIAAjAEMAbwBuAHMAdAByAHUAYwB0ACAAcwB1AGYAZgBpAGMAIABvAGYAIABlAG0AYQBpAGwAIABhAGQAZAByAGUAcwBzAC4ADQAKACAAIAAgACAAJABlAG0AYQBpAGwAcwB1AGYAZgBpAHgAIAA9ACAAIgBAAGUAbQBhAGkAbAAuAGMAbwBtACIADQAKACAAIAAgACAAIwBNAGUAcgBnAGUAIABiAG8AdABoACAAdgBhAHIAaQBhAGIAbABlAHMAIAB0AG8AZwBlAHQAaABlAHIAIAB0AG8AIABnAGUAdAAgAHQAaABlACAAZQBtAGEAaQBsACAAYQBkAGQAcgBlAHMAcwANAAoAIAAgACAAIAAkAGUAbQAgAD0AIAAkAGUAbQBhAGkAbABwAHIAZQBmAGkAeAArACQAZQBtAGEAaQBsAHMAdQBmAGYAaQB4AA0ACgAgACAAIAAgACQAYwBoAGEAbgBnAGUAUABhAHMAcwB3AG8AcgBkAGEAdABMAG8AZwBpAG4AIAA9ACAAJwAkAFQAcgB1AGUAJwANAAoAIAAgACAAIAAkAGQAZQBmAGEAdQBsAHQATwBVACAAPQAgACQAZABlAHAAYQByAHQAbQBlAG4AdABQAGEAdABoAA0ACgAgACAAIAAgACQAcABhAHMAcwAgAD0AIAAiAHoAeABjAHYAYgBuAG0ALAAuAC8APwA+ADwATQBOAEIAVgBDAFgAWgAiAA0ACgAgACAAIAAgACQAQwBvAG0AcABhAG4AeQAgAD0AIAAiAFkAbwB1AHIAIABDAG8AbQBwAGEAbgB5ACIADQAKACAAIAAgACAAJABqAHQAIAA9ACAAJABqAGIAdABsAHQAXwBjAG0AYgB4AC4AVABlAHgAdAANAAoAIAAgACAAIAAkAGUAbgAgAD0AIAAkAGUAbQBwAG4AdQBtAF8AdAB4AGIAeAAuAFQAZQB4AHQADQAKACAAIAAgACAAJABkAHQAIAA9ACAAJABkAGUAcABhAHIAdABfAGMAbQBiAHgALgBUAGUAeAB0AC4AVABvAFMAdAByAGkAbgBnACgAKQANAAoAIAAgACAAIAAjAEwAZQB0ACAAdQBzACAAcAB1AHQAIABpAHQAIABhAGwAbAAgAHQAbwBnAGUAdABoAGUAcgAgAGEAbgBkACAAbwB1AHQAcAB1AHQAIAB0AG8AIAB0AGgAZQAgAGMAbwBuAHMAbwBsAGUAIAB0AGgAZQAgAGMAbwBtAG0AYQBuAGQAIAB5AG8AdQAgAG4AZQBlAGQAIAB0AG8AIAByAHUAbgAuACAADQAKACAAIAAgACAAJABUAG8AZgB1AFMAcABhAGcAaABlAHQAdABpACAAPQAgACIATgBlAHcALQBBAEQAVQBzAGUAcgAgAC0ATgBhAG0AZQAgACIAIgAkAGUAbQBhAGkAbABwAHIAZQBmAGkAeAAiACIAIAAtAEcAaQB2AGUAbgBOAGEAbQBlACAAIgAiACQAZgBuACIAIgAgAC0AUwB1AHIAbgBhAG0AZQAgACIAIgAkAGwAbgAiACIAIAAtAFMAYQBtAEEAYwBjAG8AdQBuAHQATgBhAG0AZQAgACIAIgAkAGUAbQBhAGkAbABwAHIAZQBmAGkAeAAiACIAIAAtAFAAYQB0AGgAIAAiACIAJABkAGUAZgBhAHUAbAB0AE8AVQAiACIAIAAtAEEAYwBjAG8AdQBuAHQAUABhAHMAcwB3AG8AcgBkACAAJABwAGEAcwBzACAALQBDAGgAYQBuAGcAZQBQAGEAcwBzAHcAbwByAGQAQQB0AEwAbwBnAG8AbgAgACQAYwBoAGEAbgBnAGUAUABhAHMAcwB3AG8AcgBkAGEAdABMAG8AZwBpAG4AIAAtAEMAbwBtAHAAYQBuAHkAIAAiACIAJABDAG8AbQBwAGEAbgB5ACIAIgAgAC0AVABpAHQAbABlACAAIgAiACQAagB0ACIAIgAgAC0AUwB0AGEAdABlACAAIgAiACQAcwB0ACIAIgAgAC0AQwBpAHQAeQAgACIAIgBZAG8AdQByACAAQwBpAHQAeQAiACIAIAAtAEUAbQBwAGwAbwB5AGUAZQBOAHUAbQBiAGUAcgAgACIAIgAkAGUAbgAiACIAIAAtAEQAZQBwAGEAcgB0AG0AZQBuAHQAIAAiACIAJABkAHQAIgAiACAALQBEAGkAcwBwAGwAYQB5AE4AYQBtAGUAIAAiACIAJABkAG4AIgAiACAALQBPAGYAZgBpAGMAZQAgACIAIgAkAG8AZgAiACIAIAAtAEMAbwB1AG4AdAByAHkAIAAiACIAJABjAG8AIgAiACAALQBQAG8AcwB0AGEAbABDAG8AZABlACAAIgAiACQAegBpACIAIgAgAC0ARQBtAGEAaQBsAEEAZABkAHIAZQBzAHMAIAAiACIAJABlAG0AIgAiACAALQBGAGEAeAAgACIAIgAkAGYAeAAiACIAIAAtAE0AbwBiAGkAbABlAFAAaABvAG4AZQAgACIAIgAkAG0AbwAiACIAIAAtAE8AZgBmAGkAYwBlAFAAaABvAG4AZQAgACIAIgAkAG8AZgBwACIAIgAgAC0AUwB0AHIAZQBlAHQAQQBkAGQAcgBlAHMAcwAgACIAIgAkAGEAZAAiACIAIAAtAEUAbgBhAGIAbABlAGQAIAAkAGMAaABhAG4AZwBlAFAAYQBzAHMAdwBvAHIAZABhAHQATABvAGcAaQBuACIADQAKACAAIAAgACAAVwByAGkAdABlAC0ASABvAHMAdAAgACQAVABvAGYAdQBTAHAAYQBnAGgAZQB0AHQAaQAgAA0ACgANAAoAIAAgACAALQBzAHcAaQB0AGMAaABBAHIAcgBhAHkADQAKAAkAVwByAGkAdABlAC0ASABvAHMAdAAgAEEAZABkACAAdQBzAGUAcgAgAHQAbwAgAGcAcgBvAHUAcABzADoAIAAkAHMAZQBsAGUAYwB0AGUAZABKAG8AYgBUAGkAdABsAGUADQAKAH0AKQANAAoADQAKACMASABhAHMAIAB0AG8AIABiAGUAIABhAHQAIAB0AGgAZQAgAGUAbgBkACAAbwBmACAAdABoAGUAIABzAGMAcgBpAHAAdAAgAGEAbgBkACAAaQBuAGMAbAB1AGQAZQAgAGUAdgBlAHIAeQB0AGgAaQBuAGcAIAB5AG8AdQAgAHcAYQBuAHQAIAB0AG8AIABzAGUAZQAgAHcAaABlAG4AIAByAHUAbgBuAGkAbgBnAC4AIABBAGwAbAAgAGwAbwBnAGkAYwAgAGcAbwBlAHMAIABiAGUAZgBvAHIAZQAgAHQAaABpAHMAIABsAGkAbgBlAC4ADQAKACQAVwBpAG4AZABvAHcALgBTAGgAbwB3AEQAaQBhAGwAbwBnACgAKQA='

$Variable6 = '$depart_cmbx.add_SelectionChanged({
    if ($depart_cmbx.SelectedIndex -eq 0) {
        $jbtlt_cmbx.Items.Clear()
        $jobtitles = @("Receptionist","Executive Assistant","President / CEO")
        foreach ($j in $jobtitles)
        { 
            $jbtlt_cmbx.Items.add("$j") 
        }
    } 
    if ($depart_cmbx.SelectedIndex -eq 1) {
        $jbtlt_cmbx.Items.Clear()
        $jobtitles = @("Accountant","Finance Manager")
        foreach ($j in $jobtitles) 
        {
            $jbtlt_cmbx.Items.add("$j")
        }
    } 
    if ($depart_cmbx.SelectedIndex -eq 2) {
        $jbtlt_cmbx.Items.Clear()
        $jobtitles = @("IT Director","IT Technician","Systems Administrator")
        foreach ($j in $jobtitles)
        {
            $jbtlt_cmbx.Items.add("$j")
        }
    } 
    if ($depart_cmbx.SelectedIndex -eq 3) {
        $jbtlt_cmbx.Items.Clear()
        $jobtitles = @("Barista","Cafe Manager")
        foreach ($j in $jobtitles)
        {
            $jbtlt_cmbx.Items.add("$j") 
        }
    } else {
    #
    }
})'

$Variable5 = '$countryCodes = @("AD","AE","AF","AG","AI","AL","AM","AO","AQ","AR","AS","AT","AU","AW","AX","AZ","BA","BB","BD","BE","BF","BG","BH","BI","BJ","BL","BM","BN","BO","BQ","BR","BS","BT","BV","BW","BY","BZ","CA","CC","CD","CF","CG","CH","CI","CK","CL","CM","CN","CO","CR","CU","CV","CW","CX","CY","CZ","DE","DJ","DK","DM","DO","DZ","EC","EE","EG","EH","ER","ES","ET","FI","FJ","FK","FM","FO","FR","GA","GB","GD","GE","GF","GG","GH","GI","GL","GM","GN","GP","GQ","GR","GS","GT","GU","GW","GY","HK","HM","HN","HR","HT","HU","ID","IE","IL","IM","IN","IO","IQ","IR","IS","IT","JE","JM","JO","JP","KE","KG","KH","KI","KM","KN","KP","KR","KW","KY","KZ","LA","LB","LC","LI","LK","LR","LS","LT","LU","LV","LY","MA","MC","MD","ME","MF","MG","MH","MK","ML","MM","MN","MO","MP","MQ","MR","MS","MT","MU","MV","MW","MX","MY","MZ","NA","NC","NE","NF","NG","NI","NL","NO","NP","NR","NU","NZ","OM","PA","PE","PF","PG","PH","PK","PL","PM","PN","PR","PS","PT","PW","PY","QA","RE","RO","RS","RU","RW","SA","SB","SC","SD","SE","SG","SH","SI","SJ","SK","SL","SM","SN","SO","SR","SS","ST","SV","SX","SY","SZ","TC","TD","TF","TG","TH","TJ","TK","TL","TM","TN","TO","TR","TT","TV","TW","TZ","UA","UG","UM","US","UY","UZ","VA","VC","VE","VG","VI","VN","VU","WF","WS","YE","YT","ZA","ZM","ZW")'

$Variable4 = '$stateCodes = @("AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY")'


#Department Selection = Default OU added to during user creation. 
$Variable3 = '
Switch ($depart_cmbx.Text)
{
 "Admin"
 {
     $departmentPath = "OU=Admin,OU=Users,DC=abc,DC=contoso,DC=net"
 }
 "Finance"
 {
     $departmentPath = "OU=Finance,OU=Users,DC=abc,DC=contoso,DC=net"
 }
 "IT"
 {
     $departmentPath = "OU=IT,OU=Users,DC=abc,DC=contoso,DC=net"
 }
 "Cafe"
 {
     $departmentPath = "OU=cafe,OU=Users,DC=abc,DC=contoso,DC=net"
 }
}'

#Departments Array
$Variable2 = '$departments = @("Administration","IT","Finanace", "Cafe")'

#Switch Job Title = Groups
$Variable1 = '
Switch ($title)
{
    #Always Start With Finanace
    "Accountant"
    {
        $selectedJobTitle = @("Accounting", "Finance", "VPN Access")
    }
    "Finance Manager"
    {
        $selectedJobTitle = @("Accounting", "Finance", "VPN Access")
    }
    #Finanace Completed
    #Administration
    "Receptionist"
    {
        $selectedJobTitle = @("Administrative")
    }
    "Executive Assistant"
    {
        $selectedJobTitle = @("Administrative", "VPN Access", "Administrative")
    }
    "President / CEO"
    {
        $selectedJobTitle = @("Administrative", "Accounting", "Executive", "VPN Access")
    }
    #IT Next
    "IT Director"
    {
        $selectedJobTitle = @("IT", "IT VPN", "Domain Users", "Remote Access", "VPN Access", "Admin User")
    }
    "IT Technician"
    {
        $selectedJobTitle = @("IT", "IT VPN", "Domain Users", "VPN Access")
    }
    "Systems Administrator"
    {
        $selectedJobTitle = @("IT", "Admin User", "Domain Users", "Remote Access", "VPN Access")
    }
    #Cafe Next
    "Barista"
    {
        $selectedJobTitle = @("Cafe User", "Domain Users")
    }
    "Cafe Manager"
    {
        $selectedJobTitle = @("Cafe User", "Cafe Manager", "Domain Users", "VPN Access")
    }
}'

Add-Type -AssemblyName PresentationCore, PresentationFramework
$Xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:AddUsersSettings"
        Title="Configuration Settings"
        Height="739"
        Width="428"
        Background="#FF333333"
        Foreground="Azure"
        FontSize="12">
    <Grid>
        <TextBlock HorizontalAlignment="Stretch" VerticalAlignment="Bottom" Margin="0,0,0,625"><Run Foreground="Cyan" Text="Update Switch Case "/><Run Text="- Title Selection = AD group array "/></TextBlock>
        <TextBox Name="switchArray_txbx" AcceptsReturn="True" TextWrapping="Wrap" ScrollViewer.HorizontalScrollBarVisibility="Auto" ScrollViewer.VerticalScrollBarVisibility="Auto" ScrollViewer.CanContentScroll="True" Height="153" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" Margin="0,0,0,469" />
        <TextBlock HorizontalAlignment="Stretch" VerticalAlignment="Bottom" Margin="0,0,0,450"><Run Foreground="Cyan" Text="Update IF "/><Run Text="- Department Selection = Job Title Options"/></TextBlock>
        <TextBox Name="states_txbx" TextWrapping="Wrap" ScrollViewer.HorizontalScrollBarVisibility="Auto" ScrollViewer.VerticalScrollBarVisibility="Auto" ScrollViewer.CanContentScroll="True" Height="36" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" Margin="0,0,0,273" />
        <TextBlock HorizontalAlignment="Stretch" VerticalAlignment="Bottom" Margin="0,0,0,310" Foreground="Cyan"><Run Text="Update States Array "/><Run Foreground="WhiteSmoke" Text="- Used for Account creation in Azure and AD."/></TextBlock>
        <TextBox Name="if_txbx" AcceptsReturn="True" TextWrapping="Wrap" Height="119" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" Margin="0,0,0,330" />
        <TextBlock HorizontalAlignment="Stretch" VerticalAlignment="Bottom" Margin="0,0,0,257" Foreground="Cyan"><Run Text="Update Country Code Array"/><Run Foreground="WhiteSmoke" Text=" - Used for Account creation in Azure and AD."/></TextBlock>
        <Grid Background="BlueViolet" Height="11" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" Margin="0,0,0,0">
            <TextBlock Text="Created By Alan Newingham" FontFamily="Century Gothic" Foreground="Black" VerticalAlignment="Center" HorizontalAlignment="Center"></TextBlock>
        </Grid>
        <TextBox Name="dept_txbx" AcceptsReturn="True" TextWrapping="Wrap" ScrollViewer.HorizontalScrollBarVisibility="Auto" ScrollViewer.VerticalScrollBarVisibility="Auto" ScrollViewer.CanContentScroll="True" Height="37" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" Margin="0,0,0,640" />
        <TextBlock Text="Update Departments Array" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" Margin="0,0,0,679" Foreground="Cyan"/>
        <TextBlock HorizontalAlignment="Stretch" VerticalAlignment="Bottom" Margin="0,0,0,202"><Run Foreground="Cyan" Text="Update Switch Case "/><Run Text="- Department Selection = Default OU"/></TextBlock>
        <TextBox Name="defaultGrp_txbx" AcceptsReturn="True" TextWrapping="Wrap" ScrollViewer.HorizontalScrollBarVisibility="Auto" ScrollViewer.VerticalScrollBarVisibility="Auto" ScrollViewer.CanContentScroll="True" Height="149" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" Margin="0,0,0,50" />
        <TextBox Name="country_txbx" TextWrapping="Wrap" ScrollViewer.HorizontalScrollBarVisibility="Auto" ScrollViewer.VerticalScrollBarVisibility="Auto" ScrollViewer.CanContentScroll="True" Height="36" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" Margin="0,0,0,219" />
        <Button Height="20" Name="aply_btn" HorizontalAlignment="Center" VerticalAlignment="Bottom" Content="Apply Changes" Margin="168,0,168,23" Background="Transparent" Foreground="Azure" FontFamily="Cnetury Gothic"></Button>
    </Grid>
</Window>
"@


#Pretty much default creation of the page in memory.
$Window = [Windows.Markup.XamlReader]::Parse($Xaml)
#Let's build the variables table

#Replace the below line with line 62 to remove outputting the variable list to the console to test.
#$xml.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name $_.Name -Value $Window.FindName($_.Name)}

[xml]$xml = $Xaml
$xml.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name $_.Name -Value $Window.FindName($_.Name) | Write-Host $_.Name}

#Logic Here
$if_txbx.Text = $Variable6
$states_txbx.Text = $Variable5
$country_txbx.Text = $Variable4
$defaultGrp_txbx.Text = $Variable3
$dept_txbx.Text = $Variable2
$switchArray_txbx.Text = $Variable1

$aply_btn.add_Click.Invoke({
#Find the desktop path
$DesktopPath = [Environment]::GetFolderPath("Desktop")
#Document Name
$fileName = "CreateADAZ.txt"
#Concatenate Dynamic Path so we can extract the base64 encoded document and update it. 
$pathPath = $DesktopPath+ "\" +$fileName
#Write out the file in the location in pathPath variable.
[IO.File]::WriteAllBytes($pathPath, [Convert]::FromBase64String($base64string))

$switchArray = $switchArray_txbx
# Now read that same data in -Raw format, modify the STATION_NAME to represent what I need to change, then save the changes to the file. 
((Get-Content -path $pathPath -Raw) -replace '-switchArray', "$switchArray") | Set-Content -Path $pathPath
Start-Sleep 2
#States Replacement
$statesArray = $states_txbx.Text
# Now read that same data in -Raw format, modify the STATION_NAME to represent what I need to change, then save the changes to the file. 
((Get-Content -path $pathPath  -Raw) -replace '-StatesARRAY', "$statesArray") | Set-Content -Path $pathPath
Start-Sleep 2
#Country Replacement
$countryArray = $country_txbx.Text
# Now read that same data in -Raw format, modify the STATION_NAME to represent what I need to change, then save the changes to the file. 
((Get-Content -path $pathPath  -Raw) -replace '-CountryARRAY', "$countryArray") | Set-Content -Path $pathPath
Start-Sleep 2
#Default Group Replacement
$defaultGrpArray = $defaultGrp_txbx.Text
# Now read that same data in -Raw format, modify the STATION_NAME to represent what I need to change, then save the changes to the file. 
((Get-Content -path $pathPath  -Raw) -replace '-defaultGrpArray', "$defaultGrpArray") | Set-Content -Path $pathPath
Start-Sleep 2
#If Statement Replacement
$ifArray = $if_txbx.Text
# Now read that same data in -Raw format, modify the STATION_NAME to represent what I need to change, then save the changes to the file. 
((Get-Content -path $pathPath  -Raw) -replace '-ifstatementARRAY', "$ifArray") | Set-Content -Path $pathPath
Start-Sleep 2
#Department Replacement
$deptArray = $dept_txbx.Text
# Now read that same data in -Raw format, modify the STATION_NAME to represent what I need to change, then save the changes to the file. 
((Get-Content -path $pathPath  -Raw) -replace '-deptArray', "$deptArray") | Set-Content -Path $pathPath
Start-Sleep 2
$FileName3 = "CreateADAZ.ps1"
$FileName2 = $DesktopPath+ "\" +$fileName3
if (Test-Path $FileName2) {
  Remove-Item $FileName2
}

Start-Sleep 2
((Get-Content -path $pathPath  -Raw) -replace 'System.Windows.Controls.TextBox:', "") | Set-Content -Path $pathPath
Start-Sleep 2
Copy-Item $pathPath $FileName2 
start-process powershell -argument $FileName2 

#>

})












#Logic Here

#Has to be at the end of the script and include everything you want to see when running. All logic goes before this line.
$Window.ShowDialog()