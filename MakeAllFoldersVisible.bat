@echo off 
mode con & color 5E
echo =====================
echo -----CREATED BY-----@
echo ----Tian Haoyang----@
echo --2010-Software-8---@
echo -------TJNU---------@
echo ====================@
echo.
echo.
echo ==================ATTENTION================== 
echo You are gonna make all folders in the target path visible !! 
echo Press any button for proceeding !!
echo --Again,press any button for proceeding......
pause>nul
echo.
echo -------------start at %time%------------
echo ====================BEGIN==================== 
echo.
echo Time spent depends on the number of folders in current path(includes subfolders)...
echo Please wait with patience......
echo.
::创建sjc.vbs的程序,输出值为当前时间(读取该程序的时间)到01/01/1970 00:00:00之间的秒(s)数
echo wscript.echo DateDiff("s", "01/01/1970 00:00:00", Now())>sjc.vbs
::读取sjc.vbs，得到x
for /f %%i in ('cscript sjc.vbs /nologo') do set x=%%i

::找当前目录下所有隐藏目录来执行代码，BTW，/a-dh为所有隐藏文件
for /f "delims=" %%b in ('dir /adh/b/s') do (
echo PROCESSING  %%b 
attrib -s -a -h -r %%b
)
echo.
echo =====================END=====================
::读取sjc.vbs，得到y
for /f %%i in ('cscript sjc.vbs /nologo') do set y=%%i
echo ------------- end at %time%-------------
set /a z=y-x
echo.
echo Time Spent: %z% seconds
del sjc.vbs
echo.
echo ========ni si bu si sa========
echo ========ni si bu si sa========
echo ========ni si bu si sa========
echo ========ni si bu si sa========
echo ========ni si bu si sa========
echo ======== sa zai anchy ========
echo ========ni si bu si sa========
echo ========ni si bu si sa========
echo ========ni si bu si sa========
echo ========ni si bu si sa========
echo Press any button to exit......
pause>nul