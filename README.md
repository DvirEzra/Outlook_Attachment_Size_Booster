# Increasing the Attachment Size Limit in Outlook

The default attachment size limit in Outlook is 20MB. This can be problematic when trying to email large files like videos, presentations, or CAD drawings. Luckily, there are a few ways to increase the attachment size limit in Outlook.

## Ways to Increase the Attachment Size Limit

### Using the Registry Editor

1. Open the Registry Editor 

![image](https://github.com/DvirEzra/Outlook_Attachment_Size_Booster/assets/122629905/659840ca-50ba-4fc5-b552-bd50f8043d6a)

2. Navigate to `HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Outlook\Preferences`
3. Create a new `DWORD (32-bit)` value named `MaximumAttachmentSize`

![image](https://github.com/DvirEzra/Outlook_Attachment_Size_Booster/assets/122629905/0155e32a-47f2-4107-ae4a-294dfcc87eb6)


4. Set the value data to the desired limit in kilobytes (e.g. 50000 for 50MB)

![image](https://github.com/DvirEzra/Outlook_Attachment_Size_Booster/assets/122629905/21411a48-4e87-49a6-8488-d50569d7bbce)

5. Select OK and close the Registry Editor.

### Using PowerShell / Run this script increase_attachment_size_limit.ps1

```
$regPath = "HKCU:\Software\Microsoft\Office\16.0\Outlook\Preferences"
New-ItemProperty -Path $regPath -Name "MaximumAttachmentSize" -Value 30720 -PropertyType DWord –Force
```

![image](https://github.com/DvirEzra/Outlook_Attachment_Size_Booster/assets/122629905/860d7f77-ec68-4228-b751-4a9745ddfbef)


Remember to set the registry path for your Outlook version and specify the desired attachment size limit. 

## Alternative Ways to Send Large Files

If increasing the limit is not an option, there are other ways to send large files through Outlook:

- Compress the files to reduce their size
- Use a file splitter tool to divide the file into smaller parts
- Upload the file to cloud storage like OneDrive and share the download link 
