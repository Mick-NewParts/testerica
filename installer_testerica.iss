; Inno Setup script for testerica.exe
; Build target: C:\Program Files (x86)\Set KITs image builder

#define MyAppName "Set KITs image builder"
#define MyAppVersion "3.9.0"
#define MyAppPublisher "Mick / Newparts"
#define MyAppURL "https://newparts.com/"
#define MyAppExeName "testerica.exe"

[Setup]
AppId={{E0E84D7C-5802-4F4C-8D57-6F7C75F9D5B1}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf32}\Set KITs image builder
DefaultGroupName=Set KITs image builder
AllowNoIcons=yes
OutputDir=installer_output
OutputBaseFilename=SetKITsImageBuilder_Setup_v{#MyAppVersion}
Compression=lzma
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=admin
ArchitecturesInstallIn64BitMode=x64
SetupIconFile=logo.ico
UninstallDisplayIcon={app}\{#MyAppExeName}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "Create a desktop icon"; GroupDescription: "Additional icons:"

[Files]
Source: "dist\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\Set KITs image builder"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\Uninstall Set KITs image builder"; Filename: "{uninstallexe}"
Name: "{autodesktop}\Set KITs image builder"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Launch Set KITs image builder"; Flags: nowait postinstall skipifsilent
