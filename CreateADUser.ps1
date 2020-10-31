<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    NEWADUSR
#>
Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(988,789)
$Form.text                       = "IT New AD User - By Alan Newingham"
$Form.TopMost                    = $false
$Form.BackColor                  = [System.Drawing.ColorTranslator]::FromHtml("#9b9b9b")

$Label2                          = New-Object system.Windows.Forms.Label
$Label2.text                     = "Office Phone"
$Label2.AutoSize                 = $true
$Label2.width                    = 25
$Label2.height                   = 10
$Label2.location                 = New-Object System.Drawing.Point(290,74)
$Label2.Font                     = New-Object System.Drawing.Font('Century Gothic',10)

$officePhone_txtbx               = New-Object system.Windows.Forms.TextBox
$officePhone_txtbx.multiline     = $false
$officePhone_txtbx.width         = 141
$officePhone_txtbx.height        = 20
$officePhone_txtbx.location      = New-Object System.Drawing.Point(387,71)
$officePhone_txtbx.Font          = New-Object System.Drawing.Font('Century Gothic',10)

$Label3                          = New-Object system.Windows.Forms.Label
$Label3.text                     = "Street"
$Label3.AutoSize                 = $true
$Label3.width                    = 25
$Label3.height                   = 10
$Label3.location                 = New-Object System.Drawing.Point(38,49)
$Label3.Font                     = New-Object System.Drawing.Font('Century Gothic',10)

$streetAddress_txtbx             = New-Object system.Windows.Forms.TextBox
$streetAddress_txtbx.multiline   = $false
$streetAddress_txtbx.width       = 222
$streetAddress_txtbx.height      = 20
$streetAddress_txtbx.location    = New-Object System.Drawing.Point(85,44)
$streetAddress_txtbx.Font        = New-Object System.Drawing.Font('Century Gothic',10)

$Label4                          = New-Object system.Windows.Forms.Label
$Label4.text                     = "Mobile#"
$Label4.AutoSize                 = $true
$Label4.width                    = 44
$Label4.height                   = 10
$Label4.location                 = New-Object System.Drawing.Point(16,45)
$Label4.Font                     = New-Object System.Drawing.Font('Century Gothic',10)

$mobilePhone_txtbx               = New-Object system.Windows.Forms.TextBox
$mobilePhone_txtbx.multiline     = $false
$mobilePhone_txtbx.width         = 187
$mobilePhone_txtbx.height        = 20
$mobilePhone_txtbx.location      = New-Object System.Drawing.Point(95,43)
$mobilePhone_txtbx.Font          = New-Object System.Drawing.Font('Century Gothic',10)

$fax_txtbx                       = New-Object system.Windows.Forms.TextBox
$fax_txtbx.multiline             = $false
$fax_txtbx.width                 = 141
$fax_txtbx.height                = 20
$fax_txtbx.location              = New-Object System.Drawing.Point(387,98)
$fax_txtbx.Font                  = New-Object System.Drawing.Font('Century Gothic',10)

$Label5                          = New-Object system.Windows.Forms.Label
$Label5.text                     = "Fax Number"
$Label5.AutoSize                 = $true
$Label5.width                    = 25
$Label5.height                   = 10
$Label5.location                 = New-Object System.Drawing.Point(297,101)
$Label5.Font                     = New-Object System.Drawing.Font('Century Gothic',10)

$email_txtbx                     = New-Object system.Windows.Forms.TextBox
$email_txtbx.multiline           = $false
$email_txtbx.width               = 189
$email_txtbx.height              = 20
$email_txtbx.location            = New-Object System.Drawing.Point(196,329)
$email_txtbx.Font                = New-Object System.Drawing.Font('Century Gothic',10)

$Label6                          = New-Object system.Windows.Forms.Label
$Label6.text                     = "EmailAddress"
$Label6.AutoSize                 = $true
$Label6.width                    = 25
$Label6.height                   = 10
$Label6.location                 = New-Object System.Drawing.Point(105,333)
$Label6.Font                     = New-Object System.Drawing.Font('Century Gothic',10)

$displayName_txtbx               = New-Object system.Windows.Forms.TextBox
$displayName_txtbx.multiline     = $false
$displayName_txtbx.width         = 188
$displayName_txtbx.height        = 20
$displayName_txtbx.location      = New-Object System.Drawing.Point(197,240)
$displayName_txtbx.Font          = New-Object System.Drawing.Font('Century Gothic',10)

$Label8                          = New-Object system.Windows.Forms.Label
$Label8.text                     = "DisplayName"
$Label8.AutoSize                 = $true
$Label8.width                    = 25
$Label8.height                   = 10
$Label8.location                 = New-Object System.Drawing.Point(105,245)
$Label8.Font                     = New-Object System.Drawing.Font('Century Gothic',10)

$Label9                          = New-Object system.Windows.Forms.Label
$Label9.text                     = "Office Loc."
$Label9.AutoSize                 = $true
$Label9.width                    = 25
$Label9.height                   = 10
$Label9.location                 = New-Object System.Drawing.Point(303,48)
$Label9.Font                     = New-Object System.Drawing.Font('Century Gothic',10)

$office_txtbx                    = New-Object system.Windows.Forms.TextBox
$office_txtbx.multiline          = $false
$office_txtbx.width              = 141
$office_txtbx.height             = 20
$office_txtbx.location           = New-Object System.Drawing.Point(387,44)
$office_txtbx.Font               = New-Object System.Drawing.Font('Century Gothic',10)

$Label12                         = New-Object system.Windows.Forms.Label
$Label12.text                    = "Zip"
$Label12.AutoSize                = $true
$Label12.width                   = 25
$Label12.height                  = 10
$Label12.location                = New-Object System.Drawing.Point(284,70)
$Label12.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$zip_txtbx                       = New-Object system.Windows.Forms.TextBox
$zip_txtbx.multiline             = $false
$zip_txtbx.width                 = 67
$zip_txtbx.height                = 20
$zip_txtbx.location              = New-Object System.Drawing.Point(309,68)
$zip_txtbx.Font                  = New-Object System.Drawing.Font('Century Gothic',10)

$Label13                         = New-Object system.Windows.Forms.Label
$Label13.text                    = "First Name"
$Label13.AutoSize                = $true
$Label13.width                   = 44
$Label13.height                  = 10
$Label13.location                = New-Object System.Drawing.Point(18,21)
$Label13.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$firstName_txtbx                 = New-Object system.Windows.Forms.TextBox
$firstName_txtbx.multiline       = $false
$firstName_txtbx.width           = 187
$firstName_txtbx.height          = 20
$firstName_txtbx.location        = New-Object System.Drawing.Point(95,17)
$firstName_txtbx.Font            = New-Object System.Drawing.Font('Century Gothic',10)

$Label14                         = New-Object system.Windows.Forms.Label
$Label14.text                    = "Last Name"
$Label14.AutoSize                = $true
$Label14.width                   = 25
$Label14.height                  = 10
$Label14.location                = New-Object System.Drawing.Point(305,21)
$Label14.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$lastName_txtbx                  = New-Object system.Windows.Forms.TextBox
$lastName_txtbx.multiline        = $false
$lastName_txtbx.width            = 141
$lastName_txtbx.height           = 20
$lastName_txtbx.location         = New-Object System.Drawing.Point(387,18)
$lastName_txtbx.Font             = New-Object System.Drawing.Font('Century Gothic',10)

$Label15                         = New-Object system.Windows.Forms.Label
$Label15.text                    = "Surname"
$Label15.AutoSize                = $true
$Label15.width                   = 25
$Label15.height                  = 10
$Label15.location                = New-Object System.Drawing.Point(133,56)
$Label15.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$Label16                         = New-Object system.Windows.Forms.Label
$Label16.text                    = "SamAccountName"
$Label16.AutoSize                = $true
$Label16.width                   = 25
$Label16.height                  = 10
$Label16.location                = New-Object System.Drawing.Point(63,81)
$Label16.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$Label17                         = New-Object system.Windows.Forms.Label
$Label17.text                    = "Group Path"
$Label17.AutoSize                = $true
$Label17.width                   = 25
$Label17.height                  = 10
$Label17.location                = New-Object System.Drawing.Point(109,104)
$Label17.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$path_txtbx                      = New-Object system.Windows.Forms.TextBox
$path_txtbx.multiline            = $false
$path_txtbx.width                = 186
$path_txtbx.height               = 20
$path_txtbx.location             = New-Object System.Drawing.Point(197,100)
$path_txtbx.Font                 = New-Object System.Drawing.Font('Century Gothic',10)

$Label20                         = New-Object system.Windows.Forms.Label
$Label20.text                    = "Company"
$Label20.AutoSize                = $true
$Label20.width                   = 156
$Label20.height                  = 10
$Label20.location                = New-Object System.Drawing.Point(13,22)
$Label20.Font                    = New-Object System.Drawing.Font('Century Gothic',10)
$Label20.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#000000")

$company_txtbx                   = New-Object system.Windows.Forms.TextBox
$company_txtbx.multiline         = $false
$company_txtbx.width             = 223
$company_txtbx.height            = 20
$company_txtbx.location          = New-Object System.Drawing.Point(85,20)
$company_txtbx.Font              = New-Object System.Drawing.Font('Century Gothic',10)

$Label21                         = New-Object system.Windows.Forms.Label
$Label21.text                    = "Job Title"
$Label21.AutoSize                = $true
$Label21.width                   = 44
$Label21.height                  = 10
$Label21.location                = New-Object System.Drawing.Point(12,129)
$Label21.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$Label23                         = New-Object system.Windows.Forms.Label
$Label23.text                    = "City"
$Label23.AutoSize                = $true
$Label23.width                   = 25
$Label23.height                  = 10
$Label23.location                = New-Object System.Drawing.Point(48,71)
$Label23.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$city_txtbx                      = New-Object system.Windows.Forms.TextBox
$city_txtbx.multiline            = $false
$city_txtbx.width                = 100
$city_txtbx.height               = 20
$city_txtbx.location             = New-Object System.Drawing.Point(85,68)
$city_txtbx.Font                 = New-Object System.Drawing.Font('Century Gothic',10)

$Label24                         = New-Object system.Windows.Forms.Label
$Label24.text                    = "Employee#"
$Label24.AutoSize                = $true
$Label24.width                   = 58
$Label24.height                  = 10
$Label24.location                = New-Object System.Drawing.Point(10,73)
$Label24.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$employeeNumber_txtbx            = New-Object system.Windows.Forms.TextBox
$employeeNumber_txtbx.multiline  = $false
$employeeNumber_txtbx.width      = 186
$employeeNumber_txtbx.height     = 20
$employeeNumber_txtbx.location   = New-Object System.Drawing.Point(95,70)
$employeeNumber_txtbx.Font       = New-Object System.Drawing.Font('Century Gothic',10)

$CountryComboBox2                = New-Object system.Windows.Forms.ComboBox
$CountryComboBox2.text           = "US"
$CountryComboBox2.width          = 39
$CountryComboBox2.height         = 14
$CountryComboBox2.location       = New-Object System.Drawing.Point(486,69)
$CountryComboBox2.Font           = New-Object System.Drawing.Font('Century Gothic',10)

$Label18                         = New-Object system.Windows.Forms.Label
$Label18.text                    = "GivenName"
$Label18.AutoSize                = $true
$Label18.width                   = 25
$Label18.height                  = 10
$Label18.location                = New-Object System.Drawing.Point(109,34)
$Label18.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$givenName_txtbx                 = New-Object system.Windows.Forms.TextBox
$givenName_txtbx.multiline       = $false
$givenName_txtbx.width           = 188
$givenName_txtbx.height          = 20
$givenName_txtbx.location        = New-Object System.Drawing.Point(196,30)
$givenName_txtbx.Font            = New-Object System.Drawing.Font('Century Gothic',10)

$surName_txtbx                   = New-Object system.Windows.Forms.TextBox
$surName_txtbx.multiline         = $false
$surName_txtbx.width             = 188
$surName_txtbx.height            = 20
$surName_txtbx.location          = New-Object System.Drawing.Point(197,52)
$surName_txtbx.Font              = New-Object System.Drawing.Font('Century Gothic',10)

$samAccount_txtbx                = New-Object system.Windows.Forms.TextBox
$samAccount_txtbx.multiline      = $false
$samAccount_txtbx.width          = 186
$samAccount_txtbx.height         = 20
$samAccount_txtbx.location       = New-Object System.Drawing.Point(196,76)
$samAccount_txtbx.Font           = New-Object System.Drawing.Font('Century Gothic',10)

$departmentComboBox4             = New-Object system.Windows.Forms.ComboBox
$departmentComboBox4.width       = 187
$departmentComboBox4.height      = 20
$departmentComboBox4.location    = New-Object System.Drawing.Point(95,97)
$departmentComboBox4.Font        = New-Object System.Drawing.Font('Century Gothic',10)

$ComboBox2                       = New-Object system.Windows.Forms.ComboBox
$ComboBox2.text                  = "FL"
$ComboBox2.width                 = 37
$ComboBox2.height                = 20
$ComboBox2.location              = New-Object System.Drawing.Point(236,68)
$ComboBox2.Font                  = New-Object System.Drawing.Font('Century Gothic',10)

$groupbox1                       = New-Object system.Windows.Forms.Groupbox
$groupbox1.height                = 448
$groupbox1.width                 = 405
$groupbox1.text                  = "Verify Accuracy"
$groupbox1.location              = New-Object System.Drawing.Point(569,15)

$Groupbox4                       = New-Object system.Windows.Forms.Groupbox
$Groupbox4.height                = 158
$Groupbox4.width                 = 547
$Groupbox4.text                  = "Employee Information"
$Groupbox4.location              = New-Object System.Drawing.Point(14,15)

$Groupbox3                       = New-Object system.Windows.Forms.Groupbox
$Groupbox3.height                = 94
$Groupbox3.width                 = 547
$Groupbox3.text                  = "Company Address"
$Groupbox3.location              = New-Object System.Drawing.Point(15,187)

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "Stage Data For Accuracy"
$Button1.width                   = 294
$Button1.height                  = 30
$Button1.location                = New-Object System.Drawing.Point(33,295)
$Button1.Font                    = New-Object System.Drawing.Font('Century Gothic',16)
$Button1.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#7900e4")
$Button1.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#84ff00")

$ToolTip1                        = New-Object system.Windows.Forms.ToolTip

$ToolTip2                        = New-Object system.Windows.Forms.ToolTip
$ToolTip2.ToolTipTitle           = "Do not modify this data unless it is incorrect."
$ToolTip2.isBalloon              = $true

$Button2_btn                     = New-Object system.Windows.Forms.Button
$Button2_btn.text                = "Create Azure"
$Button2_btn.width               = 204
$Button2_btn.height              = 30
$Button2_btn.location            = New-Object System.Drawing.Point(346,295)
$Button2_btn.Font                = New-Object System.Drawing.Font('Century Gothic',16)
$Button2_btn.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#8900ff")
$Button2_btn.BackColor           = [System.Drawing.ColorTranslator]::FromHtml("#85fd00")

$Button3_btn                     = New-Object system.Windows.Forms.Button
$Button3_btn.text                = "Domain1 Template"
$Button3_btn.width               = 204
$Button3_btn.height              = 30
$Button3_btn.location            = New-Object System.Drawing.Point(347,333)
$Button3_btn.Font                = New-Object System.Drawing.Font('Century Gothic',16)
$Button3_btn.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#7900e4")
$Button3_btn.BackColor           = [System.Drawing.ColorTranslator]::FromHtml("#84ff00")

$Label25                         = New-Object system.Windows.Forms.Label
$Label25.AutoSize                = $true
$Label25.width                   = 25
$Label25.height                  = 10
$Label25.location                = New-Object System.Drawing.Point(22,230)
$Label25.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$name_txbx                       = New-Object system.Windows.Forms.TextBox
$name_txbx.multiline             = $false
$name_txbx.width                 = 187
$name_txbx.height                = 20
$name_txbx.location              = New-Object System.Drawing.Point(196,7)
$name_txbx.Font                  = New-Object System.Drawing.Font('Century Gothic',10)

$Label27                         = New-Object system.Windows.Forms.Label
$Label27.text                    = "Name"
$Label27.AutoSize                = $true
$Label27.width                   = 25
$Label27.height                  = 10
$Label27.location                = New-Object System.Drawing.Point(148,11)
$Label27.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$Label28                         = New-Object system.Windows.Forms.Label
$Label28.text                    = "Company"
$Label28.AutoSize                = $true
$Label28.width                   = 25
$Label28.height                  = 10
$Label28.location                = New-Object System.Drawing.Point(124,127)
$Label28.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$company2_txbx                   = New-Object system.Windows.Forms.TextBox
$company2_txbx.multiline         = $false
$company2_txbx.width             = 186
$company2_txbx.height            = 20
$company2_txbx.location          = New-Object System.Drawing.Point(198,123)
$company2_txbx.Font              = New-Object System.Drawing.Font('Century Gothic',10)

$Label29                         = New-Object system.Windows.Forms.Label
$Label29.text                    = "Title"
$Label29.AutoSize                = $true
$Label29.width                   = 25
$Label29.height                  = 10
$Label29.location                = New-Object System.Drawing.Point(161,149)
$Label29.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$title2_txbx                     = New-Object system.Windows.Forms.TextBox
$title2_txbx.multiline           = $false
$title2_txbx.width               = 186
$title2_txbx.height              = 20
$title2_txbx.location            = New-Object System.Drawing.Point(197,146)
$title2_txbx.Font                = New-Object System.Drawing.Font('Century Gothic',10)

$Label30                         = New-Object system.Windows.Forms.Label
$Label30.text                    = "State"
$Label30.AutoSize                = $true
$Label30.width                   = 25
$Label30.height                  = 10
$Label30.location                = New-Object System.Drawing.Point(291,174)
$Label30.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$Label31                         = New-Object system.Windows.Forms.Label
$Label31.text                    = "Office"
$Label31.AutoSize                = $true
$Label31.width                   = 25
$Label31.height                  = 10
$Label31.location                = New-Object System.Drawing.Point(151,268)
$Label31.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$Label32                         = New-Object system.Windows.Forms.Label
$Label32.text                    = "Department"
$Label32.AutoSize                = $true
$Label32.width                   = 119
$Label32.height                  = 10
$Label32.location                = New-Object System.Drawing.Point(105,222)
$Label32.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$Label33                         = New-Object system.Windows.Forms.Label
$Label33.text                    = "City"
$Label33.AutoSize                = $true
$Label33.width                   = 25
$Label33.height                  = 10
$Label33.location                = New-Object System.Drawing.Point(162,174)
$Label33.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$Label34                         = New-Object system.Windows.Forms.Label
$Label34.text                    = "EmployeeNumber"
$Label34.AutoSize                = $true
$Label34.width                   = 25
$Label34.height                  = 10
$Label34.location                = New-Object System.Drawing.Point(71,197)
$Label34.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$Label38                         = New-Object system.Windows.Forms.Label
$Label38.text                    = "Enabled"
$Label38.AutoSize                = $true
$Label38.width                   = 25
$Label38.height                  = 10
$Label38.location                = New-Object System.Drawing.Point(281,197)
$Label38.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$Label39                         = New-Object system.Windows.Forms.Label
$Label39.text                    = "Street Address"
$Label39.AutoSize                = $true
$Label39.width                   = 25
$Label39.height                  = 10
$Label39.location                = New-Object System.Drawing.Point(98,423)
$Label39.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$Label40                         = New-Object system.Windows.Forms.Label
$Label40.text                    = "OfficePhone"
$Label40.AutoSize                = $true
$Label40.width                   = 25
$Label40.height                  = 10
$Label40.location                = New-Object System.Drawing.Point(108,403)
$Label40.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$Label41                         = New-Object system.Windows.Forms.Label
$Label41.text                    = "MobilePhone"
$Label41.AutoSize                = $true
$Label41.width                   = 25
$Label41.height                  = 10
$Label41.location                = New-Object System.Drawing.Point(105,378)
$Label41.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$Label42                         = New-Object system.Windows.Forms.Label
$Label42.text                    = "Fax"
$Label42.AutoSize                = $true
$Label42.width                   = 25
$Label42.height                  = 10
$Label42.location                = New-Object System.Drawing.Point(165,355)
$Label42.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$Label43                         = New-Object system.Windows.Forms.Label
$Label43.text                    = "PostalCode"
$Label43.AutoSize                = $true
$Label43.width                   = 25
$Label43.height                  = 10
$Label43.location                = New-Object System.Drawing.Point(116,311)
$Label43.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$Label44                         = New-Object system.Windows.Forms.Label
$Label44.text                    = "Country"
$Label44.AutoSize                = $true
$Label44.width                   = 25
$Label44.height                  = 10
$Label44.location                = New-Object System.Drawing.Point(139,289)
$Label44.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$state_txbx                      = New-Object system.Windows.Forms.TextBox
$state_txbx.multiline            = $false
$state_txbx.width                = 46
$state_txbx.height               = 20
$state_txbx.location             = New-Object System.Drawing.Point(338,171)
$state_txbx.Font                 = New-Object System.Drawing.Font('Century Gothic',10)

$city2_txbx                      = New-Object system.Windows.Forms.TextBox
$city2_txbx.multiline            = $false
$city2_txbx.width                = 84
$city2_txbx.height               = 20
$city2_txbx.location             = New-Object System.Drawing.Point(197,170)
$city2_txbx.Font                 = New-Object System.Drawing.Font('Century Gothic',10)

$employeenum_txbx                = New-Object system.Windows.Forms.TextBox
$employeenum_txbx.multiline      = $false
$employeenum_txbx.width          = 68
$employeenum_txbx.height         = 20
$employeenum_txbx.location       = New-Object System.Drawing.Point(198,193)
$employeenum_txbx.Font           = New-Object System.Drawing.Font('Century Gothic',10)

$department2_txbx                = New-Object system.Windows.Forms.TextBox
$department2_txbx.multiline      = $false
$department2_txbx.width          = 186
$department2_txbx.height         = 20
$department2_txbx.location       = New-Object System.Drawing.Point(198,216)
$department2_txbx.Font           = New-Object System.Drawing.Font('Century Gothic',10)

$office2_txbx                    = New-Object system.Windows.Forms.TextBox
$office2_txbx.multiline          = $false
$office2_txbx.width              = 188
$office2_txbx.height             = 20
$office2_txbx.location           = New-Object System.Drawing.Point(198,263)
$office2_txbx.Font               = New-Object System.Drawing.Font('Century Gothic',10)

$zip2_txbx                       = New-Object system.Windows.Forms.TextBox
$zip2_txbx.multiline             = $false
$zip2_txbx.width                 = 188
$zip2_txbx.height                = 20
$zip2_txbx.location              = New-Object System.Drawing.Point(198,307)
$zip2_txbx.Font                  = New-Object System.Drawing.Font('Century Gothic',10)

$country_txbx                    = New-Object system.Windows.Forms.TextBox
$country_txbx.multiline          = $false
$country_txbx.width              = 188
$country_txbx.height             = 20
$country_txbx.location           = New-Object System.Drawing.Point(198,285)
$country_txbx.Font               = New-Object System.Drawing.Font('Century Gothic',10)

$fax2_txbx                       = New-Object system.Windows.Forms.TextBox
$fax2_txbx.multiline             = $false
$fax2_txbx.width                 = 189
$fax2_txbx.height                = 20
$fax2_txbx.location              = New-Object System.Drawing.Point(197,351)
$fax2_txbx.Font                  = New-Object System.Drawing.Font('Century Gothic',10)

$mobile_txbx                     = New-Object system.Windows.Forms.TextBox
$mobile_txbx.multiline           = $false
$mobile_txbx.width               = 189
$mobile_txbx.height              = 20
$mobile_txbx.location            = New-Object System.Drawing.Point(198,373)
$mobile_txbx.Font                = New-Object System.Drawing.Font('Century Gothic',10)

$streetaddress2_txbx             = New-Object system.Windows.Forms.TextBox
$streetaddress2_txbx.multiline   = $false
$streetaddress2_txbx.width       = 189
$streetaddress2_txbx.height      = 20
$streetaddress2_txbx.location    = New-Object System.Drawing.Point(198,419)
$streetaddress2_txbx.Font        = New-Object System.Drawing.Font('Century Gothic',10)

$officeph_txbx                   = New-Object system.Windows.Forms.TextBox
$officeph_txbx.multiline         = $false
$officeph_txbx.width             = 189
$officeph_txbx.height            = 20
$officeph_txbx.location          = New-Object System.Drawing.Point(197,396)
$officeph_txbx.Font              = New-Object System.Drawing.Font('Century Gothic',10)

$Output_txbx                     = New-Object system.Windows.Forms.TextBox
$Output_txbx.multiline           = $true
$Output_txbx.width               = 956
$Output_txbx.height              = 269
$Output_txbx.Scrollbars          = "Vertical" 
$Output_txbx.Anchor              = 'top,right,bottom,left'
$Output_txbx.location            = New-Object System.Drawing.Point(18,469)
$Output_txbx.Font                = New-Object System.Drawing.Font('Consolas',12)

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Department"
$Label1.AutoSize                 = $true
$Label1.width                    = 44
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(10,100)
$Label1.Font                     = New-Object System.Drawing.Font('Century Gothic',10)

$JobTitleComboBox                = New-Object system.Windows.Forms.ComboBox
$JobTitleComboBox.width          = 207
$JobTitleComboBox.height         = 20
$JobTitleComboBox.location       = New-Object System.Drawing.Point(75,124)
$JobTitleComboBox.Font           = New-Object System.Drawing.Font('Century Gothic',10)

$Label7                          = New-Object system.Windows.Forms.Label
$Label7.text                     = "Country Code"
$Label7.AutoSize                 = $true
$Label7.width                    = 25
$Label7.height                   = 10
$Label7.location                 = New-Object System.Drawing.Point(385,71)
$Label7.Font                     = New-Object System.Drawing.Font('Century Gothic',10)

$Label10                         = New-Object system.Windows.Forms.Label
$Label10.text                    = "State"
$Label10.AutoSize                = $true
$Label10.width                   = 5
$Label10.height                  = 10
$Label10.location                = New-Object System.Drawing.Point(195,71)
$Label10.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$Button5_btn                     = New-Object system.Windows.Forms.Button
$Button5_btn.text                = "Domain2 Template"
$Button5_btn.width               = 204
$Button5_btn.height              = 30
$Button5_btn.location            = New-Object System.Drawing.Point(347,406)
$Button5_btn.Font                = New-Object System.Drawing.Font('Century Gothic',16)
$Button5_btn.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#7900e4")
$Button5_btn.BackColor           = [System.Drawing.ColorTranslator]::FromHtml("#84ff00")

$Button4_btn                     = New-Object system.Windows.Forms.Button
$Button4_btn.text                = "Domain3 Template"
$Button4_btn.width               = 204
$Button4_btn.height              = 30
$Button4_btn.location            = New-Object System.Drawing.Point(347,370)
$Button4_btn.Font                = New-Object System.Drawing.Font('Century Gothic',16)
$Button4_btn.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#7900e4")
$Button4_btn.BackColor           = [System.Drawing.ColorTranslator]::FromHtml("#84ff00")

$Label19                         = New-Object system.Windows.Forms.Label
$Label19.text                    = "$True"
$Label19.AutoSize                = $true
$Label19.width                   = 25
$Label19.height                  = 10
$Label19.location                = New-Object System.Drawing.Point(347,197)
$Label19.Font                    = New-Object System.Drawing.Font('Century Gothic',10)

$copyToClipboard_btn             = New-Object system.Windows.Forms.Button
$copyToClipboard_btn.text        = "Copy to Clipboard"
$copyToClipboard_btn.width       = 129
$copyToClipboard_btn.height      = 30
$copyToClipboard_btn.location    = New-Object System.Drawing.Point(845,745)
$copyToClipboard_btn.Font        = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$copyToClipboard_btn.ForeColor   = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$copyToClipboard_btn.BackColor   = [System.Drawing.ColorTranslator]::FromHtml("#0258c0")

$ToolTip1.SetToolTip($groupbox1,'The data in this field should auto populate from the fields on the left. You can modify these fields if the information is incorrect. When ready click on create template. ')
$Groupbox4.controls.AddRange(@($Label2,$officePhone_txtbx,$Label4,$mobilePhone_txtbx,$fax_txtbx,$Label5,$Label9,$office_txtbx,$Label13,$firstName_txtbx,$Label14,$lastName_txtbx,$Label21,$Label24,$employeeNumber_txtbx,$departmentComboBox4,$Label1,$JobTitleComboBox))
$Groupbox3.controls.AddRange(@($Label3,$streetAddress_txtbx,$Label12,$zip_txtbx,$Label20,$company_txtbx,$Label23,$city_txtbx,$CountryComboBox2,$ComboBox2,$Label7,$Label10))
$groupbox1.controls.AddRange(@($email_txtbx,$Label6,$displayName_txtbx,$Label8,$Label15,$Label16,$Label17,$path_txtbx,$Label18,$givenName_txtbx,$surName_txtbx,$samAccount_txtbx,$Label25,$name_txbx,$Label27,$Label28,$company2_txbx,$Label29,$title2_txbx,$Label30,$Label31,$Label32,$Label33,$Label34,$Label38,$Label39,$Label40,$Label41,$Label42,$Label43,$Label44,$state_txbx,$city2_txbx,$employeenum_txbx,$department2_txbx,$office2_txbx,$zip2_txbx,$country_txbx,$fax2_txbx,$mobile_txbx,$streetaddress2_txbx,$officeph_txbx,$Label19))
$Form.controls.AddRange(@($groupbox1,$Groupbox4,$Groupbox3,$Button1,$Button2_btn,$Button3_btn,$Output_txbx,$Button5_btn,$Button4_btn,$copyToClipboard_btn))



#$ComboBox2 = States
$ComboBox2.Items.Add("AL")
$ComboBox2.Items.Add("AK")
$ComboBox2.Items.add("AZ")
$ComboBox2.Items.add("AR")
$ComboBox2.Items.add("CA")
$ComboBox2.Items.add("CO")
$ComboBox2.Items.add("CT")
$ComboBox2.Items.add("DE")
$ComboBox2.Items.add("FL")
$ComboBox2.Items.add("GA")
$ComboBox2.Items.add("HI")
$ComboBox2.Items.add("ID")
$ComboBox2.Items.add("IL")
$ComboBox2.Items.add("IN")
$ComboBox2.Items.add("IA")
$ComboBox2.Items.add("KS")
$ComboBox2.Items.add("KY")
$ComboBox2.Items.add("LA")
$ComboBox2.Items.add("ME")
$ComboBox2.Items.add("MD")
$ComboBox2.Items.add("MA")
$ComboBox2.Items.add("MI")
$ComboBox2.Items.add("MN")
$ComboBox2.Items.add("MS")
$ComboBox2.Items.add("MO")
$ComboBox2.Items.add("MT")
$ComboBox2.Items.add("NE")
$ComboBox2.Items.add("NV")
$ComboBox2.Items.add("NH")
$ComboBox2.Items.add("NJ")
$ComboBox2.Items.add("NM")
$ComboBox2.Items.add("NY")
$ComboBox2.Items.add("NC")
$ComboBox2.Items.add("ND")
$ComboBox2.Items.add("OH")
$ComboBox2.Items.add("OK")
$ComboBox2.Items.add("OR")
$ComboBox2.Items.add("PA")
$ComboBox2.Items.add("RI")
$ComboBox2.Items.add("SC")
$ComboBox2.Items.add("SD")
$ComboBox2.Items.add("TN")
$ComboBox2.Items.add("TX")
$ComboBox2.Items.add("UT")
$ComboBox2.Items.add("VT")
$ComboBox2.Items.add("VA")
$ComboBox2.Items.add("WA")
$ComboBox2.Items.add("WV")
$ComboBox2.Items.add("WI")
$ComboBox2.Items.add("WY")

#CountryComboBox2 = Country Codes
$CountryComboBox2.Items.add("AD")
$CountryComboBox2.Items.add("AE")
$CountryComboBox2.Items.add("AF")
$CountryComboBox2.Items.add("AG")
$CountryComboBox2.Items.add("AI")
$CountryComboBox2.Items.add("AL")
$CountryComboBox2.Items.add("AM")
$CountryComboBox2.Items.add("AO")
$CountryComboBox2.Items.add("AQ")
$CountryComboBox2.Items.add("AR")
$CountryComboBox2.Items.add("AS")
$CountryComboBox2.Items.add("AT")
$CountryComboBox2.Items.add("AU")
$CountryComboBox2.Items.add("AW")
$CountryComboBox2.Items.add("AX")
$CountryComboBox2.Items.add("AZ")
$CountryComboBox2.Items.add("BA")
$CountryComboBox2.Items.add("BB")
$CountryComboBox2.Items.add("BD")
$CountryComboBox2.Items.add("BE")
$CountryComboBox2.Items.add("BF")
$CountryComboBox2.Items.add("BG")
$CountryComboBox2.Items.add("BH")
$CountryComboBox2.Items.add("BI")
$CountryComboBox2.Items.add("BJ")
$CountryComboBox2.Items.add("BL")
$CountryComboBox2.Items.add("BM")
$CountryComboBox2.Items.add("BN")
$CountryComboBox2.Items.add("BO")
$CountryComboBox2.Items.add("BQ")
$CountryComboBox2.Items.add("BR")
$CountryComboBox2.Items.add("BS")
$CountryComboBox2.Items.add("BT")
$CountryComboBox2.Items.add("BV")
$CountryComboBox2.Items.add("BW")
$CountryComboBox2.Items.add("BY")
$CountryComboBox2.Items.add("BZ")
$CountryComboBox2.Items.add("CA")
$CountryComboBox2.Items.add("CC")
$CountryComboBox2.Items.add("CD")
$CountryComboBox2.Items.add("CF")
$CountryComboBox2.Items.add("CG")
$CountryComboBox2.Items.add("CH")
$CountryComboBox2.Items.add("CI")
$CountryComboBox2.Items.add("CK")
$CountryComboBox2.Items.add("CL")
$CountryComboBox2.Items.add("CM")
$CountryComboBox2.Items.add("CN")
$CountryComboBox2.Items.add("CO")
$CountryComboBox2.Items.add("CR")
$CountryComboBox2.Items.add("CU")
$CountryComboBox2.Items.add("CV")
$CountryComboBox2.Items.add("CW")
$CountryComboBox2.Items.add("CX")
$CountryComboBox2.Items.add("CY")
$CountryComboBox2.Items.add("CZ")
$CountryComboBox2.Items.add("DE")
$CountryComboBox2.Items.add("DJ")
$CountryComboBox2.Items.add("DK")
$CountryComboBox2.Items.add("DM")
$CountryComboBox2.Items.add("DO")
$CountryComboBox2.Items.add("DZ")
$CountryComboBox2.Items.add("EC")
$CountryComboBox2.Items.add("EE")
$CountryComboBox2.Items.add("EG")
$CountryComboBox2.Items.add("EH")
$CountryComboBox2.Items.add("ER")
$CountryComboBox2.Items.add("ES")
$CountryComboBox2.Items.add("ET")
$CountryComboBox2.Items.add("FI")
$CountryComboBox2.Items.add("FJ")
$CountryComboBox2.Items.add("FK")
$CountryComboBox2.Items.add("FM")
$CountryComboBox2.Items.add("FO")
$CountryComboBox2.Items.add("FR")
$CountryComboBox2.Items.add("GA")
$CountryComboBox2.Items.add("GB")
$CountryComboBox2.Items.add("GD")
$CountryComboBox2.Items.add("GE")
$CountryComboBox2.Items.add("GF")
$CountryComboBox2.Items.add("GG")
$CountryComboBox2.Items.add("GH")
$CountryComboBox2.Items.add("GI")
$CountryComboBox2.Items.add("GL")
$CountryComboBox2.Items.add("GM")
$CountryComboBox2.Items.add("GN")
$CountryComboBox2.Items.add("GP")
$CountryComboBox2.Items.add("GQ")
$CountryComboBox2.Items.add("GR")
$CountryComboBox2.Items.add("GS")
$CountryComboBox2.Items.add("GT")
$CountryComboBox2.Items.add("GU")
$CountryComboBox2.Items.add("GW")
$CountryComboBox2.Items.add("GY")
$CountryComboBox2.Items.add("HK")
$CountryComboBox2.Items.add("HM")
$CountryComboBox2.Items.add("HN")
$CountryComboBox2.Items.add("HR")
$CountryComboBox2.Items.add("HT")
$CountryComboBox2.Items.add("HU")
$CountryComboBox2.Items.add("ID")
$CountryComboBox2.Items.add("IE")
$CountryComboBox2.Items.add("IL")
$CountryComboBox2.Items.add("IM")
$CountryComboBox2.Items.add("IN")
$CountryComboBox2.Items.add("IO")
$CountryComboBox2.Items.add("IQ")
$CountryComboBox2.Items.add("IR")
$CountryComboBox2.Items.add("IS")
$CountryComboBox2.Items.add("IT")
$CountryComboBox2.Items.add("JE")
$CountryComboBox2.Items.add("JM")
$CountryComboBox2.Items.add("JO")
$CountryComboBox2.Items.add("JP")
$CountryComboBox2.Items.add("KE")
$CountryComboBox2.Items.add("KG")
$CountryComboBox2.Items.add("KH")
$CountryComboBox2.Items.add("KI")
$CountryComboBox2.Items.add("KM")
$CountryComboBox2.Items.add("KN")
$CountryComboBox2.Items.add("KP")
$CountryComboBox2.Items.add("KR")
$CountryComboBox2.Items.add("KW")
$CountryComboBox2.Items.add("KY")
$CountryComboBox2.Items.add("KZ")
$CountryComboBox2.Items.add("LA")
$CountryComboBox2.Items.add("LB")
$CountryComboBox2.Items.add("LC")
$CountryComboBox2.Items.add("LI")
$CountryComboBox2.Items.add("LK")
$CountryComboBox2.Items.add("LR")
$CountryComboBox2.Items.add("LS")
$CountryComboBox2.Items.add("LT")
$CountryComboBox2.Items.add("LU")
$CountryComboBox2.Items.add("LV")
$CountryComboBox2.Items.add("LY")
$CountryComboBox2.Items.add("MA")
$CountryComboBox2.Items.add("MC")
$CountryComboBox2.Items.add("MD")
$CountryComboBox2.Items.add("ME")
$CountryComboBox2.Items.add("MF")
$CountryComboBox2.Items.add("MG")
$CountryComboBox2.Items.add("MH")
$CountryComboBox2.Items.add("MK")
$CountryComboBox2.Items.add("ML")
$CountryComboBox2.Items.add("MM")
$CountryComboBox2.Items.add("MN")
$CountryComboBox2.Items.add("MO")
$CountryComboBox2.Items.add("MP")
$CountryComboBox2.Items.add("MQ")
$CountryComboBox2.Items.add("MR")
$CountryComboBox2.Items.add("MS")
$CountryComboBox2.Items.add("MT")
$CountryComboBox2.Items.add("MU")
$CountryComboBox2.Items.add("MV")
$CountryComboBox2.Items.add("MW")
$CountryComboBox2.Items.add("MX")
$CountryComboBox2.Items.add("MY")
$CountryComboBox2.Items.add("MZ")
$CountryComboBox2.Items.add("NA")
$CountryComboBox2.Items.add("NC")
$CountryComboBox2.Items.add("NE")
$CountryComboBox2.Items.add("NF")
$CountryComboBox2.Items.add("NG")
$CountryComboBox2.Items.add("NI")
$CountryComboBox2.Items.add("NL")
$CountryComboBox2.Items.add("NO")
$CountryComboBox2.Items.add("NP")
$CountryComboBox2.Items.add("NR")
$CountryComboBox2.Items.add("NU")
$CountryComboBox2.Items.add("NZ")
$CountryComboBox2.Items.add("OM")
$CountryComboBox2.Items.add("PA")
$CountryComboBox2.Items.add("PE")
$CountryComboBox2.Items.add("PF")
$CountryComboBox2.Items.add("PG")
$CountryComboBox2.Items.add("PH")
$CountryComboBox2.Items.add("PK")
$CountryComboBox2.Items.add("PL")
$CountryComboBox2.Items.add("PM")
$CountryComboBox2.Items.add("PN")
$CountryComboBox2.Items.add("PR")
$CountryComboBox2.Items.add("PS")
$CountryComboBox2.Items.add("PT")
$CountryComboBox2.Items.add("PW")
$CountryComboBox2.Items.add("PY")
$CountryComboBox2.Items.add("QA")
$CountryComboBox2.Items.add("RE")
$CountryComboBox2.Items.add("RO")
$CountryComboBox2.Items.add("RS")
$CountryComboBox2.Items.add("RU")
$CountryComboBox2.Items.add("RW")
$CountryComboBox2.Items.add("SA")
$CountryComboBox2.Items.add("SB")
$CountryComboBox2.Items.add("SC")
$CountryComboBox2.Items.add("SD")
$CountryComboBox2.Items.add("SE")
$CountryComboBox2.Items.add("SG")
$CountryComboBox2.Items.add("SH")
$CountryComboBox2.Items.add("SI")
$CountryComboBox2.Items.add("SJ")
$CountryComboBox2.Items.add("SK")
$CountryComboBox2.Items.add("SL")
$CountryComboBox2.Items.add("SM")
$CountryComboBox2.Items.add("SN")
$CountryComboBox2.Items.add("SO")
$CountryComboBox2.Items.add("SR")
$CountryComboBox2.Items.add("SS")
$CountryComboBox2.Items.add("ST")
$CountryComboBox2.Items.add("SV")
$CountryComboBox2.Items.add("SX")
$CountryComboBox2.Items.add("SY")
$CountryComboBox2.Items.add("SZ")
$CountryComboBox2.Items.add("TC")
$CountryComboBox2.Items.add("TD")
$CountryComboBox2.Items.add("TF")
$CountryComboBox2.Items.add("TG")
$CountryComboBox2.Items.add("TH")
$CountryComboBox2.Items.add("TJ")
$CountryComboBox2.Items.add("TK")
$CountryComboBox2.Items.add("TL")
$CountryComboBox2.Items.add("TM")
$CountryComboBox2.Items.add("TN")
$CountryComboBox2.Items.add("TO")
$CountryComboBox2.Items.add("TR")
$CountryComboBox2.Items.add("TT")
$CountryComboBox2.Items.add("TV")
$CountryComboBox2.Items.add("TW")
$CountryComboBox2.Items.add("TZ")
$CountryComboBox2.Items.add("UA")
$CountryComboBox2.Items.add("UG")
$CountryComboBox2.Items.add("UM")
$CountryComboBox2.Items.add("US")
$CountryComboBox2.Items.add("UY")
$CountryComboBox2.Items.add("UZ")
$CountryComboBox2.Items.add("VA")
$CountryComboBox2.Items.add("VC")
$CountryComboBox2.Items.add("VE")
$CountryComboBox2.Items.add("VG")
$CountryComboBox2.Items.add("VI")
$CountryComboBox2.Items.add("VN")
$CountryComboBox2.Items.add("VU")
$CountryComboBox2.Items.add("WF")
$CountryComboBox2.Items.add("WS")
$CountryComboBox2.Items.add("YE")
$CountryComboBox2.Items.add("YT")
$CountryComboBox2.Items.add("ZA")
$CountryComboBox2.Items.add("ZM")
$CountryComboBox2.Items.add("ZW")

#departmentComboBox4 = Department List
$departmentComboBox4.Items.add("Department1")
$departmentComboBox4.Items.add("A")
$departmentComboBox4.Items.add("B")
$departmentComboBox4.Items.add("D")
$departmentComboBox4.Items.add("E")
$departmentComboBox4.Items.add("F")
$departmentComboBox4.Items.add("H")
$departmentComboBox4.Items.add("I")
$departmentComboBox4.Items.add("M")
$departmentComboBox4.Items.add("O")
$departmentComboBox4.Items.add("P")



$departmentComboBox4.Add_SelectedIndexChanged({ 
    
    Switch ($departmentComboBox4.text)
    {
        "F"
        {
            $jobtitles = @("A","C", "F", "S")
        }
        "Department1"
        {
            $jobtitles = @("J","L","P", "R", "R")
        }
        "Department2"
        {
            $jobtitles = @("A","B","F", "F", "O")
        }
        "B"
        {
            $jobtitles = @("S","S A")
        }
        "D"
        {
            $jobtitles = @("C","C","C")
        }
        "E"
        {
            $jobtitles = @("C","C A","E","G","H","P","P")
        }
        "H"
        {
            $jobtitles = @("H")
        }
        "I"
        {
            $jobtitles = @("I","I","I","W","S")
        }
        "M"
        {
            $jobtitles = @("A","A","D","E","Hn","My")
        }
        "P"
        {
            $jobtitles = @("Pn","P","P","O","P","O")
        }
        "O"
        {
            $jobtitles = @("A","Dns","E","Ext","Oer","Or","Ot","Oe","St","R")
        }
        default
        {
            $jobtitles = @()
        }
    }
    $JobTitleComboBox.DataSource = $jobtitles
 })




    $Button2_btn.Add_Click({

        $UserCredential = Get-Credential
        Connect-MsolService -Credential $UserCredential
        
        #Immediately after Connecting Build Variables
        $a = $firstName_txtbx.Text
        $a = $a.Trim()
        $givenName_txtbx.Text = $a
        $cA = $a
        $a = $a.SubString(0,1)
        $b = $lastName_txtbx.Text
        $b = $b.Trim()
        $surName_txtbx.Text = $b
        $cA = $cA + " " + $b
        $cA
        $displayName_txtbx.Text=$cA
        $c=$a+$b
        $c=$c.ToLower()
        $samAccount_txtbx.Text = $c
        $c
        $d=$c+"@email.com"
        $last = $lastName_txtbx.Text
        $last = $last.Trim()
        $surName_txtbx.Text = $b
        $displayName_txtbx.Text=$cA
        $samAccount = $samAccount_txtbx.Text
        $givenName = $givenName_txtbx.Text   
        $name_txbx.Text = $cA
        $country = $CountryComboBox2.Text.ToString()
        
        #Build account
        $PasswordProfile=New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
        $PasswordProfile.Password="PASSWRORSDFGDSDG"
        New-AzureADUser -DisplayName $cA -GivenName $givenName -SurName $last -UserPrincipalName $d -UsageLocation $country -MailNickName $samAccount -LicenseAssignment osaa:ENTERPRISEPACK -PasswordProfile $PasswordProfile -AccountEnabled $true
    })


    $copyToClipboard_btn.Add_Click({
        $Output_txbx.Text | Set-Clipboard
    })


    $Button1.Add_Click({

        Switch ($departmentComboBox4.Text)
        {
         "Department1"
         {
             $departmentPath = "OU=Department1,OU=UUUH,DC=abc,DC=defg,DC=com"
         }
         "Department2"
         {
             $departmentPath = "OU=Department2,OU=UUUH,DC=abc,DC=defg,DC=com"
         }
         "B"
         {
             $departmentPath = "OU=B,OU=UUUH,DC=abc,DC=defg,DC=com"
         }
         "D"
         {
             $departmentPath = "OU=PD,OU=UUUH,DC=abc,DC=defg,DC=com"
         }
         "E"
         {
             $departmentPath = "OU=E,OU=UUUH,DC=abc,DC=defg,DC=com"
         }
         "F"
         {
             $departmentPath = "OU=F,OU=UUUH,DC=abc,DC=defg,DC=com"
         }
         "H"
         {
             $departmentPath = "OU=H,OU=UUUH,DC=abc,DC=defg,DC=com"
         }
         "I"
         {
             $departmentPath = "OU=IT,OU=UUUH,DC=abc,DC=defg,DC=com"
         }
         "M"
         {
             $departmentPath = "OU=M,OU=UUUH,DC=abc,DC=defg,DC=com"
         }
         "O"
         {
             $departmentPath = "OU=Operations,OU=UUUH,DC=abc,DC=defg,DC=com"
         }
         "P"
         {
             $departmentPath = "OU=P,OU=UUUH,DC=abc,DC=defg,DC=com"
         }
       }

        Switch ($JobTitleComboBox.text)
            {
                #Always Start With F
                "A"
                {
                    $selectedJobTitle = @("DU", "A", "F", "N", "V")
                }
                "C"
                {
                    $selectedJobTitle = @("DU", "A", "F", "N", "V", "D")
                }
                "S"
                {
                    $selectedJobTitle = @("DU", "A", "F", "N", "V")
                }
                "i"
                {
                    $selectedJobTitle = @("DU", "A", "F", "N", "V", "D")
                }

                "A"
                {
                    $selectedJobTitle = @("DU", "M")
                }
                "A"
                {
                    $selectedJobTitle = @("DU", "M")
                }
                "E"
                {
                    $selectedJobTitle = @("DU", "M")
                }
                "H"
                {
                    $selectedJobTitle = @("DU", "M")
                }
                "M"
                {
                    $selectedJobTitle = @("DU", "M", "V")
                }
                "L"
                {
                    $selectedJobTitle = @("DU", "A", "F", "N", "V","D")
                }
                "P"
                {
                    $selectedJobTitle = @("DU", "A", "D", "V")
                }
                "R"
                {
                    $selectedJobTitle = @("A", "D")
                }
                "R"
                {
                    $selectedJobTitle = @("DU", "A", "D", "V")
                }
                
                "A"
                {
                    $selectedJobTitle = @("DU", "O", "V")
                }
                "D"
                {
                    $selectedJobTitle = @("DU", "O", "V")
                }
                "E"
                {
                    $selectedJobTitle = @("DU", "A", "F", "N", "V")
                }
                "E"
                {
                    $selectedJobTitle = @("DU", "A", "D", "V")
                }
                "O"
                {
                    $selectedJobTitle = @("DU", "O")
                }
                "O"
                {
                    $selectedJobTitle = @("DU", "O")
                }
                "O"
                {
                    $selectedJobTitle = @("DU", "O")
                }
                "O"
                {
                    $selectedJobTitle = @("DU", "O")
                }
                "S"
                {
                    $selectedJobTitle = @("DU", "B")
                }
                "S"
                {
                    $selectedJobTitle = @("DU", "B", "D", "V")
                }
                "A"
                {
                    $selectedJobTitle = @("DU", "A", "A", "F","O", "V", "D")
                }
                "B"
                {
                    $selectedJobTitle = @("DU", "A", "A", "F", "F")
                }
                "F"
                {
                    $selectedJobTitle = @("DU", "A", "F")
                }
                "F"
                {
                    $selectedJobTitle = @("DU", "A", "A")
                }
                "O"
                {
                    $selectedJobTitle = @("DU", "A", "A", "F", "F","O", "V", "D")
                }
                #A Completed.
                "P"
                {
                    $selectedJobTitle = @("DU", "C", "P")
                }
                "P"
                {
                    $selectedJobTitle = @("DU", "C", "P")
                }
                "P"
                {
                    $selectedJobTitle = @("DU", "P")
                }
                "P"
                {
                    $selectedJobTitle = @("DU", "P")
                }
                "P
                    $selectedJobTitle = @("DU", "P")
                }
                "P"
                {
                    $selectedJobTitle = @("DU", "P", "V")
                }
                "C"
                {
                    $selectedJobTitle = @("DU", "D")
                }
                "C"
                {
                    $selectedJobTitle = @("DU", "C", "PD", "V")
                }
                "C"
                {
                    $selectedJobTitle = @("DU", "PD")
                }
                "P"
                {
                    $selectedJobTitle = @("DU", "PD")
                }
                "C"
                {
                    $selectedJobTitle = @("DU", "A")
                }
                "C"
                {
                    $selectedJobTitle = @("DU", "D", "E", "N", "V")
                }
                "E"
                {
                    $selectedJobTitle = @("DU", "A", "V")
                }
                "G"
                {
                    $selectedJobTitle = @("DU", "A", "F","N", "V")
                }
                "H"
                {
                    $selectedJobTitle = @("DU", "A", "V", "H")
                }
                "P"
                {
                    $selectedJobTitle = @("DU", "A", "D", "E", "N", "V")
                }
                "P"
                {
                    $selectedJobTitle = @("DU", "A")
                }

                "I"
                {
                    $selectedJobTitle = @("IT", "A", "C", "DU", "D", "N", "M", "V", "M")
                }
                "I"
                {
                    $selectedJobTitle = @("DU", "IT", "M", "V")
                }
                "I"
                {
                    $selectedJobTitle = @("DU", "IT", "M", "V", "M", "D")
                }
                "W"
                {
                    $selectedJobTitle = @("DU", "IT", "M", "V", "D")
                }
                "S"
                {
                    $selectedJobTitle = @("IT", "C", "DU", "D", "N", "M", "V", "M")
                }
            }

            function addGroups {
                Param ( $selectedJobTitle, $samAccount3 )
                $selectedJobTitle | Add-ADGroupMember -Members $samAccount3
            }

            function createPassword{
                (ConvertTo-SecureString "" -AsPlainText -Force)
            }
            function OutputTrueData 
            {
                $True
            }
            function addUserDrive {
                            Param ( $samAccount1 )
                            #Colate Directory Information
                            $baselevel = 'E:\Groups\'
                            $newFolderFull = $baselevel+$samAccount1
                            Visual Verification
                            Write-Host Full Directory Path: $newFolderFull
                            Write-Host
                            Write-Host User Account: $samAccount1
                            Write-Host
                            Write-Output Creating Directory.. $newFolderFull
                            Write-Host
                            #Creates Directory
                            New-Item $newFolderFull -ItemType Directory
                            Write-Host
                            Write-Host Set Permissions on new Directory for $samAccount1
                            #Getting Ready to Set Permissions on new Directory
                            $Acl = Get-Acl "$newFolderFull"
                            $AccessRequest = New-Object System.Security.AccessControl.FileSystemAccessRule("$samAccount1", "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow")
                            $Acl.SetAccessRule($AccessRequest)
                            #Set Permissions on new Directory
                            Set-Acl "$newFolderFull" $Acl
                            #If the directory can be found, open the properties window so I can verify the permissions are set.
                            if (Test-Path $newFolderFull) {
                                $o = new-object -com Shell.Application
                                $folder = $o.NameSpace("$newFolderFull")
                                $folder.Self.InvokeVerb("Properties")
                            }
                            else {
                                Write-Host -ForegroundColor Red "The directory has not been created."
                            }
                        }


        # a = First Name, and holds the textbox value to get manipulated later on.
        $a = $firstName_txtbx.Text
          #Take extra spaces off front and back of variable in case you added a space when creating. I did that is why I am adding this. 
        $a = $a.Trim()
        #givenName = $a at this point so make that happen because we are going to manipulate a shortly.
        $givenName_txtbx.Text = $a
        #assign cA to also use this later for first last name conversion
        $cA = $a
        #Manipulation. Drop a character to first letter to create the (f) in first last.
        $a = $a.SubString(0,1)
        #Grab that dammed last name. :) 
        $b = $lastName_txtbx.Text
        #Take extra spaces off front and back of variable in case you added a space when creating. I did that is why I am adding this. 
        $b = $b.Trim()
        #surName is also this so let's do that now.
        $surName_txtbx.Text = $b
        #First Last manipulation, add a space between the words to create the Display Name
        $cA = $cA + " " + $b
        #Display displayname. 
        #$cA
        $displayName_txtbx.Text=$cA
        #Oh here we go on this rollercoaster. Final stop samAccountName. 
        $c=$a+$b
        #c currently = FLast
        $c=$c.ToLower()
        #c currently = flast
        $samAccount_txtbx.Text = $c
        #samAccountName
        #$c
        $truedataneverbeentrueer = '$true'
        #d = generate email address
        $d=$c+"@email.com"
        #Add email address to text box for verification
        $email_txtbx.Text = $d
        #all the work above to find the department and match to a starter path? We finally get to use it!
        $path_txtbx.Text = $departmentPath
        #Mapping over for verification
        $lastName = $lastName_txtbx.Text
        $lastName = $lastName.Trim()
        #Mapping over for verification
        $givenName = $givenName_txtbx.Text   
        #Mapping over for verification
        $name_txbx.Text = $cA
        #Mapping over for verification, made this static because I cannot forsee a time when we wouldn't want this to be true. 
        #$changePassword_txbx.Text = '$True'
        #Mapping over for verification
        $company2_txbx.Text = $company_txtbx.Text 
        #Mapping over for verification
        $title2_txbx.Text = $JobTitleComboBox.Text.ToString()
        #Mapping over for verification
        $city2_txbx.Text = $city_txtbx.Text    
        #Mapping over for verification, convert selected state to string to use as text in the state textbox.
        $state_txbx.Text = $ComboBox2.Text.ToString()
        #Mapping over for verification
        $employeenum_txbx.Text = $employeeNumber_txtbx.Text 
        #Mapping over for verification, convert selected country to string to use as text in the country textbox, as well as in the Azure creation script.
        $department2_txbx.Text = $departmentComboBox4.Text.ToString()
         #Mapping over for verification
        $office2_txbx.Text = $office_txtbx.Text
         #Mapping over for verification
        $zip2_txbx.Text = $zip_txtbx.Text
         #Mapping over for verification
        $country_txbx.Text = $CountryComboBox2.Text.ToString()
         #Mapping over for verification
        $fax2_txbx.Text = $fax_txtbx.Text
         #Mapping over for verification
        $mobile_txbx.Text = $mobilePhone_txtbx.Text
         #Mapping over for verification
        $streetaddress2_txbx.Text = $streetAddress_txtbx.Text
         #Mapping over for verification
        #$enabled_txbx.Text = $enabled_txbx.Text
         #Mapping over for verification
        $officeph_txbx.Text = $officePhone_txtbx.Text
         #Mapping over for verification disabled this as again do not see when this would not be a case we cannot just "do manually", if it's a problem we will add it back.
         #$enabl = 
        $enabled = $truedataneverbeentrueer
        #$enabled.Trim()
        #Mapping over for verification
        $surName_txtbx.Text = $b
        #Creating generic password so there's no typo's, forcing change on first login. We will change the temp password here and on lines: 
        #$VariableFunction3 = $function:createPassword 
        $pass = '(ConvertTo-SecureString "Temp123!" -AsPlainText -Force)'
        $displayName_txtbx.Text=$cA
         #Mapping over for script creation
        $samAccount = $samAccount_txtbx.Text
          #Mapping over for script creation
        $lastName = $lastName_txtbx.Text
        $lastName = $lastName.Trim()
          #Mapping over for script creation
        $givenName = $givenName_txtbx.Text 
          #Mapping over for script creation  
        $name_txbx.Text = $cA
          #Mapping over for script creation
        $changePasswordatLogin = $truedataneverbeentrueer
          #Mapping over for script creation
        $Company = $company2_txbx.Text 
          #Mapping over for script creation
        $title = $title2_txbx.Text
          #Mapping over for script creation
        $city2 = $city_txtbx.Text    
          #Mapping over for script creation
        $state = $state_txbx.Text
          #Mapping over for script creation
        $employeeNum = $employeenum_txbx.Text 
          #Mapping over for script creation
        #$department = $departmentComboBox4.Text.ToString()
        $office2 = $office_txtbx.Text
          #Mapping over for script creation
        $zip = $zip_txtbx.Text.ToString()
          #Mapping over for script creation
        $country = $CountryComboBox2.Text.ToString()
          #Mapping over for script creation
        $fax2 = $fax_txtbx.Text
          #Mapping over for script creation
        $mobile = $mobilePhone_txtbx.Text
          #Mapping over for script creation
        $streetaddress2 = $streetAddress_txtbx.Text
          #Mapping over for script creation
        $officeph = $officePhone_txtbx.Text


         
        [System.Windows.MessageBox]::Show($selectedJobTitle)


        $Output_txbx.Text = "`r`n ---------------====================1 DOMAIN COPY BELOW====================--------------- `r`n"
        $Output_txbx.Text += "`r`n `r`n"
        $Output_txbx.Text += "`r`n ---------------====================Copy Below To Build User Account and Paste On  PowerShell Admininstrator Console====================--------------- `r`n"
        $Output_txbx.Text += "`r`n `r`n"
        $Output_txbx.Text += "New-ADUser -Name ""$cA"" -GivenName ""$givenName"" -Surname ""$lastName"" -SamAccountName ""$samAccount"" -Path ""$departmentPath"" -AccountPassword $pass -ChangePasswordAtLogon $changePasswordatLogin -Company ""$Company"" -Title ""$title"" -State ""$state"" -City ""$city2"" -EmployeeNumber ""$employeeNum"" -Department ""$department2"" -DisplayName ""$cA"" -Office ""$office2"" -Country ""$country"" -PostalCode ""$zip"" -EmailAddress ""$d"" -Fax ""$fax2"" -MobilePhone ""$mobile"" -OfficePhone ""$officeph"" -StreetAddress ""$streetaddress2"" -Enabled $enabled"
        $Output_txbx.Text += "`r`n `r`n"
        $Output_txbx.Text += "`r`n ---------------====================Copy Below To Build User Drive and Paste On  PowerShell Admininstrator Console====================--------------- `r`n"
        $Output_txbx.Text += "`r`n `r`n"
        $VariableFunction = $function:addUserDrive
        $Output_txbx.Text += $VariableFunction.Ast.Extent.Text
        $Output_txbx.Text += "`r`n addUserDrive $samAccount `r`n"
        $Output_txbx.Text += "`r`n `r`n"
        $Output_txbx.Text += "`r`n ---------------====================Copy Below To Add User to Correct Groups Based Off Job Title and Paste On PowerShell Admininstrator Console====================--------------- `r`n"
        $Output_txbx.Text += "`r`n `r`n"
                        $safetyword2 = ""
        foreach ($safetyword in $selectedJobTitle) {
            
                    $safetyword2 += '"' + $safetyword + '"' + ","
        }
        #Because the length property always exists on a string, I can use it with the substring method. This is useful with the second position of the command, because I do not always know how long the string is.

        $safetyword2 = $safetyword2.Substring(0,$safetyword2.Length-1)
        $Output_txbx.Text += $safetyword2
        $Output_txbx.Text += $arraytotex + " | " + 'Add-ADGroupMember -Members ' + $samAccount"
        $Output_txbx.Text += "`r`n `r`n"
        $Output_txbx.Text += "`r`n `r`n"
        <#$Output_txbx.Text += "`r`n2 DOMAIN COPY BELOW `r`n"
        $Output_txbx.Text += "`r`n `r`n"
        $Output_txbx.Text += "New-ADUser -Name ""$cA"" -GivenName ""$givenName"" -Surname ""$lastName"" -SamAccountName ""$samAccount"" -Path ""$departmentPath"" -AccountPassword ""$pass"" -ChangePasswordAtLogon $changePasswordatLogin -Company ""$Company"" -Title ""$title"" -State ""$state"" -City ""$city2"" -EmployeeNumber ""$employeeNum"" -Department ""$department2"" -DisplayName ""$cA"" -Office ""$office2"" -Country ""$country"" -PostalCode ""$zip"" -EmailAddress ""$d"" -Fax ""$fax2"" -MobilePhone ""$mobile"" -OfficePhone ""$officeph"" -StreetAddress ""$streetaddress2"" -Enabled $enabled"
        $Output_txbx.Text += "`r`n `r`n"
        $Output_txbx.Text += "`r`n3 DOMAIN COPY BELOW `r`n"
        $Output_txbx.Text += "`r`n `r`n"
        $Output_txbx.Text += "New-ADUser -Name ""$cA"" -GivenName ""$givenName"" -Surname ""$lastName"" -SamAccountName ""$samAccount"" -Path ""$departmentPath"" -AccountPassword ""$pass"" -ChangePasswordAtLogon $changePasswordatLogin -Company ""$Company"" -Title ""$title"" -State ""$state"" -City ""$city2"" -EmployeeNumber ""$employeeNum"" -Department ""$department2"" -DisplayName ""$cA"" -Office ""$office2"" -Country ""$country"" -PostalCode ""$zip"" -EmailAddress ""$d"" -Fax ""$fax2"" -MobilePhone ""$mobile"" -OfficePhone ""$officeph"" -StreetAddress ""$streetaddress2"" -Enabled $enabled"
        $Output_txbx.Text += ""#>
})




[void]$Form.ShowDialog()
