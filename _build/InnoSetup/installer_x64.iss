; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{CCDC440A-CC57-4BED-8CDE-1DA285976A64}
AppName=VidCutter
AppVersion=3.2.0
AppVerName=VidCutter
AppPublisher=Pete Alexandrou
AppPublisherURL=http://vidcutter.ozmartians.com
DefaultDirName={pf}\VidCutter
DefaultGroupName=VidCutter
OutputBaseFilename=VidCutter-3.2.0-setup-x64
SetupIconFile=C:\DEV\vidcutter\data\icons\vidcutter.ico
UninstallDisplayIcon={app}\vidcutter.exe
Compression=lzma2
SolidCompression=yes
ShowLanguageDialog=no
VersionInfoVersion=3.2.0
VersionInfoCompany=ozmartians.com
VersionInfoCopyright=(c) 2017 Pete Alexandrou
VersionInfoProductName=VidCutter x64
VersionInfoProductVersion=3.2.0
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
WizardImageFile=C:\DEV\vidcutter\_build\InnoSetup\assets\WizModernImage.bmp
WizardSmallImageFile=C:\DEV\vidcutter\_build\InnoSetup\assets\SmallWizardImage.bmp
WizardImageStretch=False

[InstallDelete]
Type: filesandordirs; Name: "{app}"

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks] 
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "C:\DEV\vidcutter\_build\pyinstaller\dist\vidcutter.exe"; DestDir: "{app}"
Source: "C:\DEV\vidcutter\data\icons\uninstall.ico"; DestDir: "{app}"

[Icons]
Name: "{group}\VidCutter"; Filename: "{app}\vidcutter.exe"
Name: "{commondesktop}\VidCutter"; Filename: "{app}\vidcutter.exe"; Tasks: desktopicon
Name: "{group}\{cm:UninstallProgram, VidCutter}"; Filename: "{uninstallexe}"; IconFilename: "{app}\uninstall.ico"

[Run]
Filename: "{app}\vidcutter.exe"; Flags: nowait postinstall skipifsilent 64bit; Description: "{cm:LaunchProgram,VidCutter}"
