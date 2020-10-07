@echo off
:: variables
echo Backing up file
set source="D:\Resources_AFP\font\*"
Echo Source dir is: D:\Resources_AFP\font\
set destination="C:\Program Files\InfoPrint\InfoPrint Transform Features\itm\xforms\afp2pdf\font\"
Echo Destination dir is: C:\Program Files\InfoPrint\InfoPrint Transform Features\itm\xforms\afp2pdf\font\
set xcopy=xcopy /S/E/V/Q/F/H/I/N/Y
Echo Copying resources from %source% %destination%
%xcopy% %source% %destination%
echo files will be copy press enter to proceed