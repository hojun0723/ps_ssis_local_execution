#=======================================================================
#
# SSIS 패키지 CLI 환경 실행 (로컬)
# - 패키지 실행 자동화 테스트
#
#=======================================================================

$ISServer = "\SSISDB\COMPANY\PJTNONSAP\PKG_MART_TMMNG001.dtsx"
$Server = "localhost"
$Set1 = "\Package.Variables[pFrDate];20190905"
$Set2 = "\Package.Variables[pToDate];20190906"

dtexec /ISServer $ISServer /Server $Server /Set $Set1 /Set $Set2

#cmd
#dtexec /ISServer "\SSISDB\COMPANY\PJTNONSAP\PKG_MART_TMMNG001.dtsx" /Server "localhost" /Set "\Package.Variables[pFrDate]";"20190905" /Set "\Package.Variables[pToDate]";"20190906"

#powershell
#dtexec /ISServer "\SSISDB\COMPANY\PJTNONSAP\PKG_MART_TMMNG001.dtsx" /Server "localhost" /Set "\Package.Variables[pFrDate];20190905" /Set "\Package.Variables[pToDate];20190906"