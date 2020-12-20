@echo off
SET admin_vscode_path=powershell cd 'C:\\Users\\Dylan\\AppData\\Local\\Programs\\Microsoft VS Code\\'; Start-Process code.exe -Verb runAs
SET path=C:\Users\Dylan\AppData\Local\Programs\Microsoft VS Code\code.exe
SET label_edit=Edit with VS Code
SET label_admin_edit=Edit with VS Code as Admin
SET label_admin_open=Open with VS Code as Admin
SET label=Open with VS Code

rem add for all file types
@reg add "HKEY_CLASSES_ROOT\*\shell\Edit with VS Code"         /t REG_SZ /v "" /d "%label_edit%" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Edit with VS Code"         /t REG_EXPAND_SZ /v "Icon" /d "%path%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Edit with VS Code\command" /t REG_SZ /v "" /d "%path% \"%%1\"" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Edit with VS Code as Admin"         /t REG_SZ /v "" /d "%label_admin_edit%" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Edit with VS Code as Admin"         /t REG_EXPAND_SZ /v "Icon" /d "%path%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Edit with VS Code as Admin"         /t REG_SZ /v "Extended" /d ""
@reg add "HKEY_CLASSES_ROOT\*\shell\Edit with VS Code as Admin\command" /t REG_SZ /v "" /d "%admin_vscode_path% \"%%1\"" /f

rem add for folders
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with VS Code"         /t REG_SZ /v "" /d "%label%" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with VS Code"         /t REG_EXPAND_SZ /v "Icon" /d "%path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with VS Code\command" /t REG_SZ /v "" /d "%path% \"%%V\"" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with VS Code"         /t REG_SZ /v "" /d "%label%" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with VS Code"         /t REG_EXPAND_SZ /v "Icon" /d "%path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with VS Code\command" /t REG_SZ /v "" /d "%path% \"%%V\"" /f

rem directory for admin
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open VS Code as Admin"         /t REG_SZ /v "" /d "%label_admin_open%" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open VS Code as Admin"         /t REG_EXPAND_SZ /v "Icon" /d "%path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open VS Code as Admin"         /t REG_SZ /v "Extended" /d "" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open VS Code as Admin\command" /t REG_SZ /v "" /d "%admin_vscode_path% \"%%V\"" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open VS Code as Admin"         /t REG_SZ /v "" /d "%label_admin_open%" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open VS Code as Admin"         /t REG_EXPAND_SZ /v "Icon" /d "%path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open VS Code as Admin"         /t REG_SZ /v "Extended" /d "" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open VS Code as Admin\command" /t REG_SZ /v "" /d "%admin_vscode_path% \"%%V\"" /f

pause
