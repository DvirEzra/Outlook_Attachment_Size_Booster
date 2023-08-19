$regPath = "HKCU:\Software\Microsoft\Office\16.0\Outlook\Preferences"
New-ItemProperty -Path $regPath -Name "MaximumAttachmentSize" -Value 30720 -PropertyType DWord –Force
