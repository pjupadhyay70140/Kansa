# OUTPUT TSV
# Nod to Mike Fanning for concept
# Determines whether IIS is installed
$ErrorActionPreference = "SilentlyContinue"
$o = "" | Select-Object IISInstalled
if ((Get-ItemProperty HKLM:\Software\Microsoft\InetStp\Components\).W3SVC) {
    $o.IISInstalled = "True"
} else {
    $o.IISInstalled = "False"
}
$o