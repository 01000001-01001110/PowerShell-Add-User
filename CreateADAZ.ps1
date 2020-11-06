
<#
Created By: Alan Newingham
Git: 
Purpose: Create an AD Account Generator Generic Enough So Anyone Can Use It. 
Date: 11/6/2020

#>

Add-Type -AssemblyName PresentationCore, PresentationFramework
$Xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:Create_New_User"
        Title="MainWindow"
        Height="305.464"
        Width="281.458"
        Background="#FF333333"
        Foreground="Orange"
        FontFamily="Century Gothic"
        FontSize="16"
            >
    <Grid>
        <StackPanel HorizontalAlignment="Stretch" VerticalAlignment="Bottom" Height="20" Margin="0,0,0,0">
            <TextBlock HorizontalAlignment="Center" Foreground="DarkOrchid" Opacity=".4" Height="23" Margin="0,0,0,0" TextWrapping="Wrap" Text="By Alan Newingham - 2020" VerticalAlignment="Center"/>
        </StackPanel>
        <StackPanel  Orientation="Horizontal" CanHorizontallyScroll="True" HorizontalAlignment="Stretch" VerticalAlignment="Bottom" Height="30" Margin="0,0,0,20">
            <Button Name="ad_btn" Background="Transparent"  Foreground="Orange" Content="Create AD" HorizontalAlignment="Right" Margin="26,0,0,0" VerticalAlignment="Stretch" Width="106"/>
            <Button Name="az_btn" Background="Transparent" Foreground="Orange" Content="Create Azure" HorizontalAlignment="Left" Margin="2,0,0,0" VerticalAlignment="Stretch" Width="114"/>
        </StackPanel>
        <TextBox HorizontalAlignment="Left" Height="23" Margin="140,190,0,0" TextWrapping="Wrap" Name="jbtitle_txbx" VerticalAlignment="Top" Width="120"/>
        <TextBox HorizontalAlignment="Left" Height="23" Margin="140,142,0,0" TextWrapping="Wrap" Name="mobil_txbx" VerticalAlignment="Top" Width="120"/>
        <TextBox HorizontalAlignment="Left" Height="23" Margin="140,118,0,0" TextWrapping="Wrap" Name="ophone_txbx" VerticalAlignment="Top" Width="120"/>
        <TextBox HorizontalAlignment="Left" Height="23" Margin="140,94,0,0" TextWrapping="Wrap" Name="oloc_txbx" VerticalAlignment="Top" Width="120"/>
        <TextBox HorizontalAlignment="Left" Height="23" Margin="140,70,0,0" TextWrapping="Wrap" Name="empnum_txbx" VerticalAlignment="Top" Width="120"/>
        <TextBox HorizontalAlignment="Left" Height="23" Margin="140,46,0,0" TextWrapping="Wrap" Name="last_txbx" VerticalAlignment="Top" Width="120"/>
        <TextBox HorizontalAlignment="Left" Height="23" Margin="140,22,0,0" TextWrapping="Wrap" Name="first_txbx" VerticalAlignment="Top" Width="120"/>
        <TextBlock HorizontalAlignment="Right" Height="23" Margin="0,189,142,0" TextWrapping="Wrap" Text="Job Title" VerticalAlignment="Top" Width="63"/>
        <TextBlock HorizontalAlignment="Right" Height="23" Margin="0,165,142,0" TextWrapping="Wrap" Text="Department" VerticalAlignment="Top" Width="98"/>
        <TextBlock HorizontalAlignment="Right" Height="23" Margin="0,141,142,0" TextWrapping="Wrap" Text="Mobile Phone" VerticalAlignment="Top" Width="110"/>
        <TextBlock HorizontalAlignment="Right" Height="23" Margin="0,117,142,0" TextWrapping="Wrap" Text="Office Phone" VerticalAlignment="Top" Width="106"/>
        <TextBlock HorizontalAlignment="Right" Height="23" Margin="0,93,142,0" TextWrapping="Wrap" Text="Office Location" VerticalAlignment="Top" Width="122"/>
        <TextBlock HorizontalAlignment="Right" Height="23" Margin="0,69,142,0" TextWrapping="Wrap" Text="Emp #" VerticalAlignment="Top" Width="53"/>
        <TextBlock HorizontalAlignment="Right" Height="23" Margin="0,45,142,0" TextWrapping="Wrap" Text="Last Name" VerticalAlignment="Top" Width="86"/>
        <TextBlock HorizontalAlignment="Right" Height="23" Margin="0,21,142,0" TextWrapping="Wrap" Text="First Name" VerticalAlignment="Top" Width="83"/>
        <ComboBox HorizontalAlignment="Left" Height="23" Margin="140,166,0,0" VerticalAlignment="Top" Name="depart_cmbx" Width="120"/>

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


#Populate Department Combo Box (Add or remove departments here)
$depart_cmbx.Items.add("Administration")
$depart_cmbx.Items.add("Finance")
$depart_cmbx.Items.add("IT")
#You can have as many departments as you want, in any order. I suggest you make this resemble your AD structure.
$depart_cmbx.Items.add("Security")
$depart_cmbx.Items.add("Operations")
$depart_cmbx.Items.add("Maintenance")
$depart_cmbx.Items.add("Cafe")

#Create Click Invoke Buttons Work
$az_btn.add_Click.Invoke({

    #Grab the Users First and Last name twice, once for lowercase, once for uppercase. 
    $fn = $first_txbx.Text
    $fnC = $first_txbx.Text
    $ln = $last_txbx.Text
    $lnC = $last_txbx.Text
    #Take WhiteSpace Off Names If Present
    $fnC = $fnC.Trim()
    $lnC = $lnC.Trim()
    $fn = $fn.Trim()
    $ln = $ln.Trim()
    #Lowercase all letters 
    $fn = $fn.ToLower()
    $ln = $ln.ToLower()
    #Drop to only the first letter
    $fl = $fn.SubString(0,1)
    #Create email address first letter of first name plus last name. Used for other things as well. 
    $emailprefix = $fl+$ln
    #Build Display Name
    $dn = $fnC + " " + $lnC
    #Construct suffic of email address.
    $emailsuffix = "@email.com"
    #Merge both variables together to get the email address
    $em = $emailprefix+$emailsuffix
    $changePasswordatLogin = '$True'
    #Create password profile for AzureAD creation, copied directly from Microsoft.
    $PasswordProfile=New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
    $PasswordProfile.Password="3Rv0y1q39/chsy"
    #Let us put it all together and output to the console the command you need to run. 
    $AricG = "New-AzureADUser -DisplayName ""$dn"" -GivenName ""$fn"" -SurName ""$ln"" -UserPrincipalName ""$em"" -UsageLocation US -MailNickName ""$emailprefix"" -LicenseAssignment osaa:ENTERPRISEPACK -PasswordProfile ""$PasswordProfile"" -AccountEnabled ""$changePasswordatLogin"""
    Write-Host  $AricG
})


$ad_btn.add_Click.Invoke({
    $fn = $first_txbx.Text
    $fnC = $first_txbx.Text
    $ln = $last_txbx.Text
    $lnC = $last_txbx.Text
    #Take WhiteSpace Off Names If Present
    $fnC = $fnC.Trim()
    $lnC = $lnC.Trim()
    $fn = $fn.Trim()
    $ln = $ln.Trim()
    #Lowercase all letters 
    $fn = $fn.ToLower()
    $ln = $ln.ToLower()
    #Drop to only the first letter
    $fl = $fn.SubString(0,1)
    #Create email address first letter of first name plus last name. Used for other things as well. 
    $emailprefix = $fl+$ln
    #Build Display Name
    $dn = $fnC + " " + $lnC
    #Construct suffic of email address.
    $emailsuffix = "@email.com"
    #Merge both variables together to get the email address
    $em = $emailprefix+$emailsuffix
    $changePasswordatLogin = '$True'
    $defaultOU = ""
    $pass = "%$#^#$%^#$%^#$%^#$%^#$%^#$%^#$%^#$%^#$%^#$%^#$%^#$%^#$%^#$%^#$%^#$%^%"
    $Company = "Your Company"
    $tl = $jbtitle_txbx.Text
    $en = $empnum_txbx.Text
    $dt = $depart_cmbx.Text.ToString()
    #Let us put it all together and output to the console the command you need to run. 
    $TofuSpaghetti = "New-ADUser -Name ""$emailprefix"" -GivenName ""$fn"" -Surname ""$ln"" -SamAccountName ""$emailprefix"" -Path ""$defaultOU"" -AccountPassword $pass -ChangePasswordAtLogon $changePasswordatLogin -Company ""$Company"" -Title ""$tl"" -State ""FL"" -City ""Your City"" -EmployeeNumber ""$en"" -Department ""$dt"" -DisplayName ""$dn"" -Office ""$of"" -Country ""$co"" -PostalCode ""$zi"" -EmailAddress ""$em"" -Fax ""$fx"" -MobilePhone ""$mo"" -OfficePhone ""$ofp"" -StreetAddress ""$ad"" -Enabled $changePasswordatLogin"
    Write-Host $TofuSpaghetti 
})

#Has to be at the end of the script and include everything you want to see when running. All logic goes before this line.
$Window.ShowDialog()
