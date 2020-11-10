<#
Created By: Alan Newingham
Git:
Purpose: In creating an AD account creator, I realized updating the script can be a bit... confusing. 
This is my take on Attempting to make configuration a little bit easier. 
Date: 11/8/2020
Released: 11/10/2020
#>

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
#Create the document
#Find the desktop path
$DesktopPath = [Environment]::GetFolderPath("Desktop")
$fileName = "CreateADAZ.txt"

$pathPath = $DesktopPath+$fileName

[IO.File]::WriteAllBytes($pathPath, [Convert]::FromBase64String($base64string))

$switchArray = $switchArray_txbx
# Now read that same data in -Raw format, modify the STATION_NAME to represent what I need to change, then save the changes to the file. 
((Get-Content -path C:\Users\anewingham\Desktop\Testing\CreateADAZ.txt -Raw) -replace '-switchArray', "$switchArray") | Set-Content -Path C:\Users\anewingham\Desktop\Testing\CreateADAZ.txt
Start-Sleep 2
#States Replacement
$statesArray = $states_txbx.Text
# Now read that same data in -Raw format, modify the STATION_NAME to represent what I need to change, then save the changes to the file. 
((Get-Content -path C:\Users\anewingham\Desktop\Testing\CreateADAZ.txt  -Raw) -replace '-StatesARRAY', "$statesArray") | Set-Content -Path C:\Users\anewingham\Desktop\Testing\CreateADAZ.txt
Start-Sleep 2
#Country Replacement
$countryArray = $country_txbx.Text
# Now read that same data in -Raw format, modify the STATION_NAME to represent what I need to change, then save the changes to the file. 
((Get-Content -path C:\Users\anewingham\Desktop\Testing\CreateADAZ.txt  -Raw) -replace '-CountryARRAY', "$countryArray") | Set-Content -Path C:\Users\anewingham\Desktop\Testing\CreateADAZ.txt
Start-Sleep 2
#Default Group Replacement
$defaultGrpArray = $defaultGrp_txbx.Text
# Now read that same data in -Raw format, modify the STATION_NAME to represent what I need to change, then save the changes to the file. 
((Get-Content -path C:\Users\anewingham\Desktop\Testing\CreateADAZ.txt  -Raw) -replace '-defaultGrpArray', "$defaultGrpArray") | Set-Content -Path C:\Users\anewingham\Desktop\Testing\CreateADAZ.txt
Start-Sleep 2
#If Statement Replacement
$ifArray = $if_txbx.Text
# Now read that same data in -Raw format, modify the STATION_NAME to represent what I need to change, then save the changes to the file. 
((Get-Content -path C:\Users\anewingham\Desktop\Testing\CreateADAZ.txt  -Raw) -replace '-ifstatementARRAY', "$ifArray") | Set-Content -Path C:\Users\anewingham\Desktop\Testing\CreateADAZ.txt
Start-Sleep 2
#Department Replacement
$deptArray = $dept_txbx.Text
# Now read that same data in -Raw format, modify the STATION_NAME to represent what I need to change, then save the changes to the file. 
((Get-Content -path C:\Users\anewingham\Desktop\Testing\CreateADAZ.txt  -Raw) -replace '-deptArray', "$deptArray") | Set-Content -Path C:\Users\anewingham\Desktop\Testing\CreateADAZ.txt
Start-Sleep 2
$FileName = "C:\Users\anewingham\Desktop\Testing\CreateADAZ.ps1"
if (Test-Path $FileName) {
  Remove-Item $FileName
}
Start-Sleep 2
((Get-Content -path C:\Users\anewingham\Desktop\Testing\CreateADAZ.txt  -Raw) -replace 'System.Windows.Controls.TextBox:', "") | Set-Content -Path C:\Users\anewingham\Desktop\Testing\CreateADAZ.txt
Start-Sleep 2
Copy-Item "C:\Users\anewingham\Desktop\Testing\CreateADAZ.txt" "C:\Users\anewingham\Desktop\Testing\CreateADAZ.ps1"
start-process powershell -argument "C:\Users\anewingham\Desktop\Testing\CreateADAZ.ps1"

#>

})












#Logic Here

#Has to be at the end of the script and include everything you want to see when running. All logic goes before this line.
$Window.ShowDialog()











#Logic Here

#Has to be at the end of the script and include everything you want to see when running. All logic goes before this line.
$Window.ShowDialog()