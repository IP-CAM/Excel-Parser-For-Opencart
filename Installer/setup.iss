; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Excel parser for OpenCart"
#define MyAppVersion "1.19"
#define MyAppExeName "ExcelParserForOpenCart.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{0416BA73-2A1F-4D0E-873A-DAC434334888}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
DefaultDirName={pf}\ExcelParserForOpenCart
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
InfoBeforeFile=Readme.txt
InfoAfterFile=History.txt
OutputDir=..\Installer
OutputBaseFilename=ExcelParserForOpenCart-{#MyAppVersion}
SetupIconFile=program.ico
SolidCompression=yes
VersionInfoVersion={#MyAppVersion}

[Languages]
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; 

[Files]
Source: "..\Output\Release\ExcelParserForOpenCart.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Output\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Readme.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "History.txt"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\Readme.txt"; Filename: "{app}\Readme.txt"
Name: "{group}\History.txt"; Filename: "{app}\History.txt"
Name: "{group}\Uninstall"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

