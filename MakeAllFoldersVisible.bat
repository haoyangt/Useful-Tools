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
::����sjc.vbs�ĳ���,���ֵΪ��ǰʱ��(��ȡ�ó����ʱ��)��01/01/1970 00:00:00֮�����(s)��
echo wscript.echo DateDiff("s", "01/01/1970 00:00:00", Now())>sjc.vbs
::��ȡsjc.vbs���õ�x
for /f %%i in ('cscript sjc.vbs /nologo') do set x=%%i

::�ҵ�ǰĿ¼����������Ŀ¼��ִ�д��룬BTW��/a-dhΪ���������ļ�
for /f "delims=" %%b in ('dir /adh/b/s') do (
echo PROCESSING  %%b 
attrib -s -a -h -r %%b
)
echo.
echo =====================END=====================
::��ȡsjc.vbs���õ�y
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