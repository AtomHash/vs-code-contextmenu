@echo off

rem remove for all file types
@reg delete "HKEY_CLASSES_ROOT\*\shell\Edit with VS Code" /f
@reg delete "HKEY_CLASSES_ROOT\*\shell\Edit with VS Code" /f
@reg delete "HKEY_CLASSES_ROOT\*\shell\Edit with VS Code\command" /f
@reg delete "HKEY_CLASSES_ROOT\*\shell\Edit with VS Code as Admin" /f
@reg delete "HKEY_CLASSES_ROOT\*\shell\Edit with VS Code as Admin" /f
@reg delete "HKEY_CLASSES_ROOT\*\shell\Edit with VS Code as Admin" /f
@reg delete "HKEY_CLASSES_ROOT\*\shell\Edit with VS Code as Admin\command" /f

rem remove on folders
@reg delete "HKEY_CLASSES_ROOT\Folder\shell\Open with VS Code" /f
@reg delete "HKEY_CLASSES_ROOT\Folder\shell\Open with VS Code" /f
@reg delete "HKEY_CLASSES_ROOT\Folder\shell\Open with VS Code\command" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with VS Code" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with VS Code" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with VS Code\command" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Open with VS Code" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Open with VS Code" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Open with VS Code\command" /f

rem admin folders
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Open VS Code as Admin" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Open VS Code as Admin" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Open VS Code as Admin" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Open VS Code as Admin\command" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Open VS Code as Admin" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Open VS Code as Admin" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Open VS Code as Admin" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Open VS Code as Admin\command" /f

pause