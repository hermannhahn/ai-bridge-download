; Script Inno Setup para AI Bridge Desktop GUI com Auto-Updater (Go Native)
; Compila os executáveis closed-source em um instalador completo para Windows com suporte a auto-update

#define MyAppName "AI Bridge"
#define MyAppVersion "2.0.0"
#define MyAppPublisher "Hermann Hahn"
#define MyAppURL "https://github.com/hermannhahn/ai-bridge"
#define MyAppExeName "ai-bridge.exe"
#define MyUpdaterExeName "updater.exe"

[Setup]
AppId={{D37B40A1-8E1A-4C2E-B45A-2A1B0E324F9A}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\AI Bridge
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=
OutputDir=..\build\installer
OutputBaseFilename=AI-Bridge-Setup-v2.0.0
Compression=lzma2/ultra64
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=admin

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "autostart"; Description: "Iniciar o AI Bridge automaticamente com o Windows"; GroupDescription: "Inicialização:"
Name: "autoupdate"; Description: "Verificar atualizações automaticamente ao iniciar o sistema"; GroupDescription: "Atualizações:"

[Files]
Source: "..\build\bin\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\bin\{#MyUpdaterExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\config.json.example"; DestDir: "{app}"; DestName: "config.json"; Flags: onlyifdoesntexist

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\Verificar Atualizações"; Filename: "{app}\{#MyUpdaterExeName}"
Name: "{group}\Desinstalar {#MyAppName}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Registry]
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "AIBridgeGUI"; ValueData: """{app}\{#MyAppExeName}"""; Tasks: autostart
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "AIBridgeUpdater"; ValueData: """{app}\{#MyUpdaterExeName}"" -version {#MyAppVersion} -silent"; Tasks: autoupdate

[Run]
Filename: "{app}\{#MyUpdaterExeName}"; Parameters: "-version {#MyAppVersion} -silent"; Flags: nowait skipifsilent
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
