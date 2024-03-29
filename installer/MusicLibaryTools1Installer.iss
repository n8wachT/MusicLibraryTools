; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{DC6D93EB-D7E2-4309-B634-7F2A2E50D1D9}
AppName=MusicLibraryTools
AppVerName=MusicLibraryTools 1.0
AppPublisher=Zeta Centauri
AppPublisherURL=http://zetacentauri.com
AppSupportURL=http://zetacentauri.com
AppUpdatesURL=http://zetacentauri.com
DefaultDirName={pf}\Zeta Centauri\MusicLibraryTools
DefaultGroupName=Zeta Centauri\MusicLibraryTools
LicenseFile=C:\users\Xangis\code\MusicLibraryTools\LICENSE.TXT
OutputDir=C:\users\Xangis\code\MusicLibraryTools\Installer
SetupIconFile=C:\Users\Xangis\code\MusicLibraryTools\images\MusicTools.ico
UninstallDisplayIcon={app}\MusicTools.ico
OutputBaseFilename=MusicLibraryTools1.0Setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\users\Xangis\code\MusicLibraryTools\Release\MusicLibraryTools.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Xangis\code\MusicLibraryTools\images\MusicTools.ico"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: "C:\users\Xangis\code\MusicLibraryTools\installer\vcredist2010_x86.exe"; DestDir: "{app}"; Flags: ignoreversion deleteafterinstall

[Icons]
Name: "{group}\MusicLibraryTools"; Filename: "{app}\MusicLibraryTools.exe"; WorkingDir: "{app}"
Name: "{group}\{cm:ProgramOnTheWeb,MusicLibraryTools}"; Filename: "http://zetacentauri.com/software_musiclibrarytools.htm"
Name: "{commondesktop}\MusicLibraryTools"; Filename: "{app}\MusicLibraryTools.exe"; Tasks: desktopicon; WorkingDir: "{app}"
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\MusicLibraryTools"; Filename: "{app}\MusicLibraryTools.exe"; Tasks: quicklaunchicon; WorkingDir: "{app}"

[Run]
Filename: "{app}\vcredist2010_x86.exe"; Parameters: "/q"; WorkingDir: "{app}";  StatusMsg: "Installing Visual C++ 2010 Redistributable..."; Flags: waituntilterminated
Filename: "{app}\MusicLibraryTools.exe"; Description: "{cm:LaunchProgram,MusicLibraryTools}"; Flags: nowait postinstall skipifsilent

