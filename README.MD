[MonitorNoHandle]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1

[SSL]
_rcvbuf = 1572864
allowSslRenegotiation = true
baseline = 0
cipherSuite = ALL:!aNULL:!eNULL:!LOW:!EXP:RC4+RSA:+HIGH:+MEDIUM
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1
sslQuietShutdown = false
sslVersions = *,-ssl2

[WinEventLog]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = 60

[WinEventLog://Application]
_rcvbuf = 1572864
baseline = 0
current_only = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1

[WinEventLog://Microsoft-Windows-CAPI2/Operational]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1
renderXml = true
whitelist = EventCode=%^(80|81)$%

[WinEventLog://Microsoft-Windows-PowerShell/Operational]
_rcvbuf = 1572864
baseline = 0
disabled = 1
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1
renderXml = true

[WinEventLog://Microsoft-Windows-Sysmon/Operational]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1
renderXml = true

[WinEventLog://Security]
_TCP_ROUTING = critical-autolb-group
_rcvbuf = 1572864
baseline = 0
blacklist1 = EventCode="(4689|4688|4797)"
blacklist2 = EventCode="(4799)" Message="Process Name:\s+(C:\\Windows\\System32\\SearchIndexer.exe|C:\\Windows\\System32\\VSSVC.exe|C:\\Windows\\System32\\svchost.exe)"
checkpointInterval = 5
current_only = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1
start_from = oldest

[WinEventLog://System]
_rcvbuf = 1572864
baseline = 0
current_only = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1
start_from = oldest

[WinNetMon]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1

[WinPrintMon]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1

[WinRegMon]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1

[WinRegMon://autoruns_entry_1]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Control Panel\\Desktop\\Scrnsave.exe.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_10]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\CLSID\\{7ED96837-96F0-4812-B211-F13C24117ED3}\\Instance.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_100]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\Folder\\ShellEx\\ContextMenuHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_101]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\Folder\\ShellEx\\DragDropHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_102]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\Folder\\ShellEx\\ExtShellFolderViews.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_103]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\Folder\\ShellEx\\PropertySheetHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_104]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Wow6432Node\\Microsoft\\Active Setup\\Installed Components.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_105]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Microsoft\\Command Processor\\Autorun.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_106]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Microsoft\\Internet Explorer\\Explorer Bars.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_107]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Microsoft\\Internet Explorer\\Extensions.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_108]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Microsoft\\Internet Explorer\\Toolbar.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_109]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Microsoft\\Office\\Access\\Addins.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_11]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\Clsid\\{AB8902B4-09CA-4bb6-B78D-A8F59079A8D5}\\Inprocserver32.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_110]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Microsoft\\Office\\Excel\\Addins.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_111]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Microsoft\\Office\\Outlook\\Addins.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_112]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Microsoft\\Office\\PowerPoint\\Addins.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_113]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Microsoft\\Office\\Word\\Addins.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_114]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows CE Services\\AutoStartOnConnect.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_115]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows CE Services\\AutoStartOnDisconnect.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_116]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Microsoft\\Windows NT\\CurrentVersion\\Drivers32.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_117]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_118]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows NT\\CurrentVersion\\Windows\\Appinit_Dlls.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_119]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Browser Helper Objects.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_12]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\CLSID\\{ABE3B9A4-257D-4B97-BD1A-294AF496222E}\\Instance.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_120]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\SharedTaskScheduler.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_121]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\ShellExecuteHooks.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_122]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\ShellIconOverlayIdentifiers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_123]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Explorer\\ShellServiceObjects.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_124]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\Run.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_125]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\RunOnce.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_126]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\RunOnceEx.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_127]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\ShellServiceObjectDelayLoad.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_128]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\System\\CurrentControlSet\\Control\\BootVerificationProgram\\ImagePath.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_129]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SYSTEM\\CurrentControlSet\\Control\\Lsa\\Authentication Packages.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_13]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\CLSID\\{AC757296-3522-4E11-9862-C17BE5A1767E}\\Instance.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_130]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SYSTEM\\CurrentControlSet\\Control\\Lsa\\Notification Packages.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_131]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SYSTEM\\CurrentControlSet\\Control\\Lsa\\OSConfig\\Security Packages.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_132]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SYSTEM\\CurrentControlSet\\Control\\Lsa\\Security Packages.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_133]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SYSTEM\\CurrentControlSet\\Control\\NetworkProvider\\Order.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_134]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SYSTEM\\CurrentControlSet\\Control\\Print\\Monitors.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_135]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SYSTEM\\CurrentControlSet\\Control\\SafeBoot\\AlternateShell.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_136]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\SecurityProviders.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_137]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\System\\CurrentControlSet\\Control\\ServiceControlManagerExtension.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_138]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\System\\CurrentControlSet\\Control\\Session Manager\\AppCertDlls.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_139]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\System\\CurrentControlSet\\Control\\Session Manager\\BootExecute.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_14]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\Directory\\Background\\ShellEx\\ContextMenuHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_140]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\System\\CurrentControlSet\\Control\\Session Manager\\Execute.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_141]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\System\\CurrentControlSet\\Control\\Session Manager\\KnownDlls.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_142]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\System\\CurrentControlSet\\Control\\Session Manager\\S0InitialCommand.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_143]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\System\\CurrentControlSet\\Control\\Session Manager\\SetupExecute.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_144]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\System\\CurrentControlSet\\Control\\Terminal Server\\Wds\\rdpwd\\StartupPrograms.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_145]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SYSTEM\\CurrentControlSet\\Control\\Terminal Server\\WinStations\\RDP-Tcp\\InitialProgram.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_146]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\System\\CurrentControlSet\\Services.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_147]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\System\\CurrentControlSet\\Services\\WinSock2\\Parameters\\NameSpace_Catalog5\\Catalog_Entries.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_148]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\System\\CurrentControlSet\\Services\\WinSock2\\Parameters\\NameSpace_Catalog5\\Catalog_Entries64.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_149]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\System\\CurrentControlSet\\Services\\WinSock2\\Parameters\\Protocol_Catalog9\\Catalog_Entries.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_15]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\Directory\\ShellEx\\ContextMenuHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_150]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\System\\CurrentControlSet\\Services\\WinSock2\\Parameters\\Protocol_Catalog9\\Catalog_Entries64.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_151]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SYSTEM\\Setup\\CmdLine.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_16]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\Directory\\Shellex\\CopyHookHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_17]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\Directory\\Shellex\\DragDropHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_18]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\Directory\\Shellex\\PropertySheetHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_19]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\Drive\\ShellEx\\ContextMenuHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_2]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\*\\ShellEx\\ContextMenuHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_20]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Classes\\Exefile\\Shell\\Open\\Command\\(Default).*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_21]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\Filter.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_22]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\Folder\\Shellex\\ColumnHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_23]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\Folder\\ShellEx\\ContextMenuHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_24]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\Folder\\ShellEx\\DragDropHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_25]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\Folder\\ShellEx\\ExtShellFolderViews.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_26]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\Folder\\ShellEx\\PropertySheetHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_27]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Classes\\Htmlfile\\Shell\\Open\\Command\\(Default).*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_28]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Classes\\Protocols\\Filter.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_29]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Classes\\Protocols\\Handler.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_3]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\*\\ShellEx\\PropertySheetHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_30]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Active Setup\\Installed Components.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_31]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Command Processor\\Autorun.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_32]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Ctf\\LangBarAddin.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_33]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Internet Explorer\\Desktop\\Components.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_34]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Internet Explorer\\Explorer Bars.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_35]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Internet Explorer\\Extensions.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_36]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Internet Explorer\\Toolbar.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_37]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Internet Explorer\\UrlSearchHooks.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_38]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Office test\\Special\\Perf\\(Default).*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_39]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Office\\Access\\Addins.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_4]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\.cmd.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_40]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Office\\Excel\\Addins.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_41]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Office\\Outlook\\Addins.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_42]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Office\\PowerPoint\\Addins.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_43]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Office\\Word\\Addins.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_44]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows CE Services\\AutoStartOnConnect.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_45]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows CE Services\\AutoStartOnDisconnect.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_46]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Drivers32.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_47]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Font Drivers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_48]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_49]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Terminal Server\\Install\\Software\\Microsoft\\Windows\\CurrentVersion\\Run.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_5]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\.exe.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_50]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Terminal Server\\Install\\Software\\Microsoft\\Windows\\CurrentVersion\\Runonce.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_51]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Terminal Server\\Install\\Software\\Microsoft\\Windows\\CurrentVersion\\RunonceEx.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_52]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Windows\\Appinit_Dlls.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_53]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Windows\\IconServiceLib.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_54]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Windows\\Load.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_55]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Windows\\Run.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_56]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Winlogon\\AlternateShells\\AvailableShells.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_57]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Winlogon\\AppSetup.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_58]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Winlogon\\GpExtensions.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_59]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Winlogon\\Shell.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_6]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\AllFileSystemObjects\\ShellEx\\ContextMenuHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_60]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Winlogon\\Taskman.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_61]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Winlogon\\Userinit.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_62]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Winlogon\\VmApplet.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_63]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Authentication\\Credential Provider Filters.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_64]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Authentication\\Credential Providers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_65]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Authentication\\PLAP Providers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_66]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Browser Helper Objects.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_67]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\SharedTaskScheduler.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_68]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\ShellExecuteHooks.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_69]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\ShellIconOverlayIdentifiers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_7]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\AllFileSystemObjects\\ShellEx\\DragDropHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_70]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\ShellServiceObjects.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_71]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Windows\\CurrentVersion\\Group Policy\\Scripts\\Shutdown.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_72]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Windows\\CurrentVersion\\Group Policy\\Scripts\\Startup.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_73]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer\\Run.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_74]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System\\Shell.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_75]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_76]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\RunOnce.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_77]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\RunOnceEx.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_78]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\ShellServiceObjectDelayLoad.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_79]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\SOFTWARE\\Policies\\Microsoft\\Windows\\Control Panel\\Desktop\\Scrnsave.exe.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_8]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\AllFileSystemObjects\\ShellEx\\PropertySheetHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_80]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Policies\\Microsoft\\Windows\\System\\Scripts\\Logoff.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_81]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Policies\\Microsoft\\Windows\\System\\Scripts\\Logon.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_82]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Policies\\Microsoft\\Windows\\System\\Scripts\\Shutdown.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_83]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Policies\\Microsoft\\Windows\\System\\Scripts\\Startup.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_84]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\*\\ShellEx\\ContextMenuHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_85]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\*\\ShellEx\\PropertySheetHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_86]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\AllFileSystemObjects\\ShellEx\\ContextMenuHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_87]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\AllFileSystemObjects\\ShellEx\\DragDropHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_88]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\AllFileSystemObjects\\ShellEx\\PropertySheetHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_89]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\CLSID\\{083863F1-70DE-11d0-BD40-00A0C911CE86}\\Instance.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_9]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Classes\\CLSID\\{083863F1-70DE-11d0-BD40-00A0C911CE86}\\Instance.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_90]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\CLSID\\{7ED96837-96F0-4812-B211-F13C24117ED3}\\Instance.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_91]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\CLSID\\{ABE3B9A4-257D-4B97-BD1A-294AF496222E}\\Instance.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_92]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\CLSID\\{AC757296-3522-4E11-9862-C17BE5A1767E}\\Instance.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_93]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\Directory\\Background\\ShellEx\\ContextMenuHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_94]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\Directory\\ShellEx\\ContextMenuHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_95]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\Directory\\Shellex\\CopyHookHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_96]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\Directory\\Shellex\\DragDropHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_97]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\Directory\\Shellex\\PropertySheetHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_98]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\Drive\\ShellEx\\ContextMenuHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[WinRegMon://autoruns_entry_99]
_rcvbuf = 1572864
baseline = 0
disabled = false
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
hive = .*\\Software\\Wow6432Node\\Classes\\Folder\\Shellex\\ColumnHandlers.*
host = mobile-pc
index = main
interval = -1
proc = .*
type = set|create|delete|rename

[admon]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1

[batch://C:\Program Files\SplunkUniversalForwarder\var\spool\splunk]
_rcvbuf = 1572864
baseline = 0
crcSalt = <SOURCE>
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1
move_policy = sinkhole

[batch://C:\Program Files\SplunkUniversalForwarder\var\spool\splunk\...stash_new]
_rcvbuf = 1572864
baseline = 0
crcSalt = <SOURCE>
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1
move_policy = sinkhole
queue = stashparsing
sourcetype = stash_new

[blacklist:C:\Program Files\SplunkUniversalForwarder\etc\auth]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1

[default]
_rcvbuf = 1572864
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default

[filter:blacklist:BlockAll]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1
regex1 = .?

[filter:whitelist:AllowFolderDLL]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1
regex1 = \.cfg$

[fschange:C:\Program Files\SplunkUniversalForwarder\etc]
_rcvbuf = 1572864
baseline = 0
delayInMills = 100
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
filesPerDelay = 10
followLinks = false
fullEvent = false
hashMaxSize = -1
host = mobile-pc
index = default
interval = -1
pollPeriod = 600
recurse = true
sendEventMaxSize = -1
signedaudit = true

[fschange:C:\temp\fschgtest]
_rcvbuf = 1572864
baseline = 0
delayInMills = 100
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
filesPerDelay = 10
filters = AllowFolderDLL,BlockAll
followLinks = false
fullEvent = false
hashMaxSize = -1
host = mobile-pc
index = default
interval = -1
pollPeriod = 15
recurse = true
sendEventMaxSize = -1

[http]
_rcvbuf = 1572864
allowSslCompression = true
allowSslRenegotiation = true
baseline = 0
dedicatedIoThreads = 2
disabled = 1
enableSSL = 1
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1
maxSockets = 0
maxThreads = 0
port = 8088
sslVersions = *,-ssl2
useDeploymentServer = 0

[monitor://C:\Program Files\SplunkUniversalForwarder\etc\splunk.version]
_TCP_ROUTING = *
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = _internal
interval = -1
sourcetype = splunk_version

[monitor://C:\Program Files\SplunkUniversalForwarder\var\log\splunk]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = _internal
interval = -1

[monitor://C:\Program Files\SplunkUniversalForwarder\var\log\splunk\license_usage_summary.log]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = _telemetry
interval = -1

[monitor://C:\Program Files\SplunkUniversalForwarder\var\log\splunk\metrics.log]
_TCP_ROUTING = *
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = _internal
interval = -1

[monitor://C:\Program Files\SplunkUniversalForwarder\var\log\splunk\splunkd.log]
_TCP_ROUTING = *
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = _internal
interval = -1

[monitor://C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = main
interval = -1

[monitor://C:\Users\*\AppData\Local\Microsoft\Windows Sidebar\Settings.ini]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = main
interval = -1

[monitor://C:\Users\*\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = main
interval = -1

[perfmon]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = 300

[perfmon://LogicalDisk]
_rcvbuf = 1572864
baseline = 0
counters = % Free Space; Free Megabytes; Current Disk Queue Length; % Disk Time; Avg. Disk Queue Length; % Disk Read Time; Avg. Disk Read Queue Length; % Disk Write Time; Avg. Disk Write Queue Length; Avg. Disk sec/Transfer; Avg. Disk sec/Read; Avg. Disk sec/Write; Disk Transfers/sec; Disk Reads/sec; Disk Writes/sec; Disk Bytes/sec; Disk Read Bytes/sec; Disk Write Bytes/sec; Avg. Disk Bytes/Transfer; Avg. Disk Bytes/Read; Avg. Disk Bytes/Write; % Idle Time; Split IO/Sec
disabled = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
instances = *
interval = 10
object = LogicalDisk
useEnglishOnly = true

[perfmon://Network Interface]
_rcvbuf = 1572864
baseline = 0
counters = *
disabled = true
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
instances = *
interval = 30
mode = multikv
object = Network Interface
samplingInterval = 1000
showZeroValue = 1
stats = average;max;min

[perfmon://Process]
_rcvbuf = 1572864
baseline = 0
counters = *
disabled = true
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
instances = *
interval = 30
mode = multikv
object = Process
samplingInterval = 1000
showZeroValue = 1
stats = average;max;min

[perfmon://Processor]
_rcvbuf = 1572864
baseline = 0
counters = *
disabled = true
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
instances = *
interval = 30
mode = multikv
object = Processor
samplingInterval = 1000
showZeroValue = 1
stats = average;max;count;dev;min

[perfmon://TCPv4]
_rcvbuf = 1572864
baseline = 0
counters = *
disabled = true
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
instances = *
interval = 30
mode = multikv
object = TCPv4
samplingInterval = 1000
showZeroValue = 1
stats = average;max;min

[perfmon://Thread]
_rcvbuf = 1572864
baseline = 0
counters = Priority Current; Context Switches/sec; % Processor Time
disabled = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
instances = *
interval = 10
object = LogicalDisk
useEnglishOnly = true

[powershell]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1

[powershell2]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1

[script]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = 60.0
start_by_shell = false

[script://C:\Program Files\SplunkUniversalForwarder\bin\scripts\splunk-wmi.path]
_rcvbuf = 1572864
baseline = 0
disabled = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = 10000000
persistentQueueSize = 200MB
queue = winparsing
source = wmi
sourcetype = wmi

[script://C:\Program Files\SplunkUniversalForwarder\etc\apps\TA-Sysmon\bin\updateSysmon.bat]
_rcvbuf = 1572864
baseline = 0
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = _internal
interval = -1

[script://C:\Program Files\SplunkUniversalForwarder\etc\apps\UF-CORE\bin\ICMPVarianceMonitor.path]
_rcvbuf = 1572864
baseline = 0
disabled = true
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1
source = windows:vbscript:ICMPVarianceMonitor.vbs
sourcetype = windows:vbscript

[script://C:\Program Files\SplunkUniversalForwarder\etc\apps\UF-CORE\bin\ListInstalledProducts.path]
_rcvbuf = 1572864
baseline = 0
disabled = true
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = 86400
source = windows:vbscript:ListInstalledProducts.vbs
sourcetype = windows:vbscript

[script://C:\Program Files\SplunkUniversalForwarder\etc\apps\UF-CORE\bin\ListSharePermissions.path]
_rcvbuf = 1572864
baseline = 0
disabled = true
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = 86400
source = windows:vbscript:ListSharePermissions.vbs
sourcetype = windows:vbscript

[splunktcp]
_rcvbuf = 1572864
acceptFrom = *
baseline = 0
connection_host = ip
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1
route = has_key:tautology:parsingQueue;absent_key:tautology:parsingQueue

[tcp]
_rcvbuf = 1572864
acceptFrom = *
baseline = 0
connection_host = dns
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1

[udp]
_rcvbuf = 1572864
baseline = 0
connection_host = ip
evt_dc_name = 
evt_dns_name = 
evt_resolve_ad_obj = 0
host = mobile-pc
index = default
interval = -1
