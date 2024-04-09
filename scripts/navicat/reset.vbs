Dim objShell
Set objShell = WScript.CreateObject("WScript.Shell")

' Delete registry key and its subkeys/values
objShell.RegDelete "HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium\Update"

' Delete registry keys containing "Registration" under "HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium"
DeleteRegistryKeys "HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium", "Registration"

' Delete keys named "Info" and "ShellFolder" under "HKEY_CURRENT_USER\Software\Classes\CLSID"
DeleteRegistryKeys "HKEY_CURRENT_USER\Software\Classes\CLSID", "Info"
DeleteRegistryKeys "HKEY_CURRENT_USER\Software\Classes\CLSID", "ShellFolder"

Sub DeleteRegistryKeys(keyPath, targetName)
    Dim objReg, arrSubkeys, subkey
    Set objReg = GetObject("winmgmts:\\.\root\default:StdRegProv")

    objReg.EnumKey HKEY_CURRENT_USER, keyPath, arrSubkeys

    For Each subkey In arrSubkeys
        If InStr(subkey, targetName) > 0 Then
            objShell.RegDelete keyPath & "\" & subkey
        End If
    Next
End Sub
