; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Easytest Evolution Update"
#define MyAppVersion "2.36"
#define MyAppPublisher "Codes Rousseau"
#define MyAppURL "http://www.codesrousseau.fr/"
#define MyAppExeName "EasytestEvolutionUpdate.exe"
#define SetupExeBaseName "setupEasytestEvolutionUpdate"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{CEDF6592-6DC4-43BE-A67C-5D3AE0792493}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf32}\{#MyAppPublisher}\{#MyAppName} {#MyAppVersion}
DefaultGroupName={#MyAppPublisher}\{#MyAppName} {#MyAppVersion}
DisableProgramGroupPage=auto
OutputBaseFilename={#SetupExeBaseName}{#MyAppVersion}
SetupIconFile=EasytestEvolutionMin.ico
Compression=lzma
SolidCompression=yes
ShowLanguageDialog=auto
AppCopyright={#MyAppPublisher} 2012
AllowUNCPath=False
MinVersion=0,5.01sp1
OutputDir=Livraison\Installer
UninstallDisplayName={#MyAppPublisher} {#MyAppName} {#MyAppVersion}
WizardImageFile=SetupModern20.bmp
WizardSmallImageFile=SetupModernSmall20.bmp
UninstallDisplaySize=12
UninstallDisplayIcon={app}\EasytestEvolutionUpdate.exe

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "Livraison\Exe\EasytestEvolutionUpdate.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Livraison\Exe\_ctypes.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "Livraison\Exe\_hashlib.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "Livraison\Exe\_socket.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "Livraison\Exe\_ssl.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "Livraison\Exe\bz2.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "Livraison\Exe\Crypto.Cipher.AES.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "Livraison\Exe\Crypto.Hash.SHA256.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "Livraison\Exe\library.zip"; DestDir: "{app}"; Flags: ignoreversion
Source: "Livraison\Exe\python26.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "Livraison\Exe\pywintypes26.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "Livraison\Exe\select.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "Livraison\Exe\smartcard.scard._scard.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "Livraison\Exe\unicodedata.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "Livraison\Exe\w9xpopen.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Livraison\Exe\win32api.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "Livraison\Exe\win32evtlog.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "Livraison\Exe\XLOG1X155_Boot_1_20_Appli_2_36_Easytest2Device.bin"; DestDir: "{app}"; Flags: ignoreversion
Source: "Livraison\Exe\USBCCIDDriverForXP\*"; DestDir: "{app}\USBCCIDDriverForXP"; Flags: ignoreversion createallsubdirs deleteafterinstall recursesubdirs; MinVersion: 0,5.01; OnlyBelowVersion: 0,6.0
Source: "Livraison\Exe\SmartcardMiniDriver\*"; DestDir: "{app}\SmartcardMiniDriver"; Flags: ignoreversion createallsubdirs deleteafterinstall recursesubdirs; MinVersion: 0,6.1
Source: "Livraison\Exe\Redist\*"; DestDir: "{app}\Redist"; Flags: ignoreversion createallsubdirs deleteafterinstall recursesubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{group}\See update log"; Filename: "{commonappdata}\{#MyAppPublisher}\{#MyAppName} {#MyAppVersion}\App.log"; Languages: english
Name: "{group}\Voir le log des mises à jour"; Filename: "{commonappdata}\{#MyAppPublisher}\{#MyAppName} {#MyAppVersion}\App.log"; Languages: french

[Run]
Filename: "{app}\Redist\vc2008SP1redist_x86_frFR.exe"; Parameters: "/q"; StatusMsg: "Installation de Visual C 2008 SP1 Redistribuable"; Languages: french; Check: VCRedistNeedsInstall
Filename: "{app}\Redist\vc2008SP1redist_x86_enUS.exe"; Parameters: "/q"; StatusMsg: "Installing Visual C 2008 SP1 Redistributable"; Languages: english; Check: VCRedistNeedsInstall
Filename: "{app}\USBCCIDDriverForXP\x86\dpinst.exe"; Parameters: "/Q"; Flags: waituntilterminated runhidden; OnlyBelowVersion: 0,6.0; Check: not IsWin64
Filename: "{app}\USBCCIDDriverForXP\x64\dpinst.exe"; Parameters: "/Q"; Flags: waituntilterminated runhidden; OnlyBelowVersion: 0,6.0; Check: IsWin64
Filename: "{app}\SmartcardMiniDriver\Certificates\x86\certmgr.exe"; Parameters: "-add -all -c id3Semiconductors.p7b -s -r localmachine trustedpublisher"; Flags: waituntilterminated runhidden; MinVersion: 0,6.1; Check: not IsWin64
Filename: "{app}\SmartcardMiniDriver\Certificates\x64\certmgr.exe"; Parameters: "-add -all -c id3Semiconductors.p7b -s -r localmachine trustedpublisher"; Flags: waituntilterminated runhidden; MinVersion: 0,6.1; Check: IsWin64
Filename: "{app}\SmartcardMiniDriver\dpinst32.exe"; Parameters: "/Q"; Flags: waituntilterminated runhidden; MinVersion: 0,6.1; Check: not IsWin64
Filename: "{app}\SmartcardMiniDriver\dpinst64.exe"; Parameters: "/Q"; Flags: waituntilterminated runhidden; MinVersion: 0,6.1; Check: IsWin64
Filename: "{app}\{#MyAppExeName}"; Flags: nowait postinstall skipifsilent; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"

[Dirs]
Name: "{commonappdata}\{#MyAppPublisher}\{#MyAppName} {#MyAppVersion}"

[Code]
#ifdef UNICODE
  #define AW "W"
#else
  #define AW "A"
#endif

// *** SCARDSVR service management ***

type
    SERVICE_STATUS = record
        dwServiceType               : cardinal;
        dwCurrentState              : cardinal;
        dwControlsAccepted          : cardinal;
        dwWin32ExitCode             : cardinal;
        dwServiceSpecificExitCode   : cardinal;
        dwCheckPoint                : cardinal;
        dwWaitHint                  : cardinal;
    end;

    HANDLE = cardinal;

const
    // For scardsvr management.
    SERVICE_QUERY_CONFIG        = $1;
    SERVICE_CHANGE_CONFIG       = $2;
    SERVICE_QUERY_STATUS        = $4;
    SERVICE_START               = $10;
    SERVICE_STOP                = $20;
    SERVICE_ALL_ACCESS          = $f01ff;
    SC_MANAGER_ALL_ACCESS       = $f003f;
    SERVICE_WIN32_OWN_PROCESS   = $10;
    SERVICE_WIN32_SHARE_PROCESS = $20;
    SERVICE_WIN32               = $30;
    SERVICE_INTERACTIVE_PROCESS = $100;
    SERVICE_BOOT_START          = $0;
    SERVICE_SYSTEM_START        = $1;
    SERVICE_AUTO_START          = $2;
    SERVICE_DEMAND_START        = $3;
    SERVICE_DISABLED            = $4;
    SERVICE_DELETE              = $10000;
    SERVICE_CONTROL_STOP        = $1;
    SERVICE_CONTROL_PAUSE       = $2;
    SERVICE_CONTROL_CONTINUE    = $3;
    SERVICE_CONTROL_INTERROGATE = $4;
    SERVICE_STOPPED             = $1;
    SERVICE_START_PENDING       = $2;
    SERVICE_STOP_PENDING        = $3;
    SERVICE_RUNNING             = $4;
    SERVICE_CONTINUE_PENDING    = $5;
    SERVICE_PAUSE_PENDING       = $6;
    SERVICE_PAUSED              = $7;
    SERVICE_NO_CHANGE           = $ffffffff;

function OpenSCManager(lpMachineName, lpDatabaseName: string; dwDesiredAccess :cardinal): HANDLE;
external 'OpenSCManager{#AW}@advapi32.dll stdcall';

function OpenService(hSCManager :HANDLE;lpServiceName: string; dwDesiredAccess :cardinal): HANDLE;
external 'OpenService{#AW}@advapi32.dll stdcall';

function CloseServiceHandle(hSCObject :HANDLE): boolean;
external 'CloseServiceHandle@advapi32.dll stdcall';

function StartNTService(hService :HANDLE;dwNumServiceArgs : cardinal;lpServiceArgVectors : cardinal) : boolean;
external 'StartService{#AW}@advapi32.dll stdcall';

function QueryServiceStatus(hService :HANDLE;var ServiceStatus :SERVICE_STATUS) : boolean;
external 'QueryServiceStatus@advapi32.dll stdcall';

function ChangeServiceConfig(
    hService : HANDLE;
    dwServiceType : DWORD;
    dwStartType : DWORD;
    dwErrorControl : DWORD;
    lpBinaryPathName : DWORD;
    lpLoadOrderGroup  : DWORD;
    lpdwTagId : DWORD;
    lpDependencies : DWORD;
    lpServiceStartName : DWORD;
    lpPassword : DWORD;
    lpDisplayName : DWORD)
    : boolean;
        external 'ChangeServiceConfig{#AW}@advapi32.dll stdcall';

function OpenServiceManager() : HANDLE;
begin
    if UsingWinNT() = true then
    begin
        Result := OpenSCManager('','',SC_MANAGER_ALL_ACCESS);
        if Result = 0 then
            MsgBox('The servicemanager is not available', mbError, MB_OK)
    end else
    begin
        MsgBox('only nt based systems support services', mbError, MB_OK)
        Result := 0;
    end;
end;

procedure CurStepChanged(CurStep: TSetupStep);
var
    hSCM    : HANDLE;
    hService: HANDLE;
    Status  : SERVICE_STATUS;

begin
    if CurStep = ssDone then
    begin
        //Result := false;
        hSCM := OpenServiceManager();
        if hSCM <> 0 then
        begin
            hService := OpenService(hSCM, 'SCardSvr', SERVICE_CHANGE_CONFIG or SERVICE_START or SERVICE_QUERY_STATUS);
            if hService <> 0 then
            begin
                if ChangeServiceConfig(hService, SERVICE_NO_CHANGE, SERVICE_AUTO_START, SERVICE_NO_CHANGE, 0, 0, 0, 0, 0, 0, 0) then
                begin
                    if QueryServiceStatus(hService,Status) then
                    begin
                        if Status.dwCurrentState <> SERVICE_RUNNING then
                        begin
                            if StartNTService(hService,0,0) then begin
                                //Result := true;
                            end
                            else begin
                                RaiseException('StartNTService: ' + SysErrorMessage(DLLGetLastError));
                            end;
                        end else
                        begin
                            //Result := true;
                        end;
                    end else
                    begin
                        RaiseException('QueryServiceStatus: ' + SysErrorMessage(DLLGetLastError));
                    end;
                end else
                begin
                    RaiseException('ChangeServiceConfig: ' + SysErrorMessage(DLLGetLastError));
                end;
                CloseServiceHandle(hService);
            end else
            begin
                RaiseException('OpenService: ' + SysErrorMessage(DLLGetLastError));
            end;
            CloseServiceHandle(hSCM);
        end else
        begin
            RaiseException('OpenServiceManager: ' + SysErrorMessage(DLLGetLastError));
        end;
    end;
end;

// *** vc_redist installation management ***
type
    INSTALLSTATE = Longint;

const
    INSTALLSTATE_INVALIDARG = -2;  // An invalid parameter was passed to the function.
    INSTALLSTATE_UNKNOWN = -1;     // The product is neither advertised or installed.
    INSTALLSTATE_ADVERTISED = 1;   // The product is advertised but not installed.
    INSTALLSTATE_ABSENT = 2;       // The product is installed for a different user.
    INSTALLSTATE_DEFAULT = 5;      // The product is installed for the current user.

    VC_2005_REDIST_X86 = '{A49F249F-0C91-497F-86DF-B2585E8E76B7}';
    VC_2005_REDIST_X64 = '{6E8E85E8-CE4B-4FF5-91F7-04999C9FAE6A}';
    VC_2005_REDIST_IA64 = '{03ED71EA-F531-4927-AABD-1C31BCE8E187}';
    VC_2005_SP1_REDIST_X86 = '{7299052B-02A4-4627-81F2-1818DA5D550D}';
    VC_2005_SP1_REDIST_X64 = '{071C9B48-7C32-4621-A0AC-3F809523288F}';
    VC_2005_SP1_REDIST_IA64 = '{0F8FB34E-675E-42ED-850B-29D98C2ECE08}';
    VC_2005_SP1_ATL_SEC_UPD_REDIST_X86 = '{837B34E3-7C30-493C-8F6A-2B0F04E2912C}';
    VC_2005_SP1_ATL_SEC_UPD_REDIST_X64 = '{6CE5BAE9-D3CA-4B99-891A-1DC6C118A5FC}';
    VC_2005_SP1_ATL_SEC_UPD_REDIST_IA64 = '{85025851-A784-46D8-950D-05CB3CA43A13}';

    VC_2008_REDIST_X86 = '{FF66E9F6-83E7-3A3E-AF14-8DE9A809A6A4}';
    VC_2008_REDIST_X64 = '{350AA351-21FA-3270-8B7A-835434E766AD}';
    VC_2008_REDIST_IA64 = '{2B547B43-DB50-3139-9EBE-37D419E0F5FA}';
    VC_2008_SP1_REDIST_X86 = '{9A25302D-30C0-39D9-BD6F-21E6EC160475}';
    VC_2008_SP1_REDIST_X64 = '{8220EEFE-38CD-377E-8595-13398D740ACE}';
    VC_2008_SP1_REDIST_IA64 = '{5827ECE1-AEB0-328E-B813-6FC68622C1F9}';
    VC_2008_SP1_ATL_SEC_UPD_REDIST_X86 = '{1F1C2DFC-2D24-3E06-BCB8-725134ADF989}';
    VC_2008_SP1_ATL_SEC_UPD_REDIST_X64 = '{4B6C7001-C7D6-3710-913E-5BC23FCE91E6}';
    VC_2008_SP1_ATL_SEC_UPD_REDIST_IA64 = '{977AD349-C2A8-39DD-9273-285C08987C7B}';
    VC_2008_SP1_MFC_SEC_UPD_REDIST_X86 = '{9BE518E6-ECC6-35A9-88E4-87755C07200F}';
    VC_2008_SP1_MFC_SEC_UPD_REDIST_X64 = '{5FCE6D76-F5DC-37AB-B2B8-22AB8CEDB1D4}';
    VC_2008_SP1_MFC_SEC_UPD_REDIST_IA64 = '{515643D1-4E9E-342F-A75A-D1F16448DC04}';

    VC_2010_REDIST_X86 = '{196BB40D-1578-3D01-B289-BEFC77A11A1E}';
    VC_2010_REDIST_X64 = '{DA5E371C-6333-3D8A-93A4-6FD5B20BCC6E}';
    VC_2010_REDIST_IA64 = '{C1A35166-4301-38E9-BA67-02823AD72A1B}';
    VC_2010_SP1_REDIST_X86 = '{F0C3E5D1-1ADE-321E-8167-68EF0DE699A5}';
    VC_2010_SP1_REDIST_X64 = '{1D8E6291-B0D5-35EC-8441-6616F567A0F7}';
    VC_2010_SP1_REDIST_IA64 = '{88C73C1C-2DE5-3B01-AFB8-B46EF4AB41CD}';

function MsiQueryProductState(szProduct: string): INSTALLSTATE;
    external 'MsiQueryProductState{#AW}@msi.dll stdcall';

function VCVersionInstalled(const ProductID: string): Boolean;
begin
    Result := MsiQueryProductState(ProductID) = INSTALLSTATE_DEFAULT;
end;

function VCRedistNeedsInstall: Boolean;
begin
    Result := not (VCVersionInstalled(VC_2008_REDIST_X86) or VCVersionInstalled(VC_2008_SP1_REDIST_X86));
end;
