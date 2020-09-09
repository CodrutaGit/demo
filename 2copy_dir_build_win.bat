net use \\172.27.112.113\sw_transforms\public\ITM\Kit\ITM_3.9.0\ITM_3.9.0-win\cycle9 /u:saguaroprint.ro\cmorariu New42day /p:yes

set source="\\172.27.112.113\sw_transforms\public\ITM\Kit\ITM_3.9.0\ITM_3.9.0-win\cycle9"
set target="\\172.27.105.152\Users\Administrator\Transforms\Builds"

c:\Windows\System32\xcopy.exe /T  \\172.27.112.113\sw_transforms\public\ITM\Kit\ITM_3.9.0\ITM_3.9.0-win\cycle9 \\172.27.105.152\Users\Administrator\Transforms\Builds /s /i