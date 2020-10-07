@echo off
:: variables
echo Backing up file
set source="D:\Resources_AFP\reslib\*"
Echo Source dir is: D:\Resources_AFP\reslib\
set destination="C:\Program Files\InfoPrint\InfoPrint Transform Features\itm\xforms\afp2pdf\reslib\"
Echo Destination dir is: C:\Program Files\InfoPrint\InfoPrint Transform Features\itm\xforms\afp2pdf\reslib\
set xcopy=xcopy /S/E/V/Q/F/H/I/N/Y/L/T
Echo Copying resources from %source% %destination%
%xcopy% %source% %destination%
echo files will be copy press enter to proceed