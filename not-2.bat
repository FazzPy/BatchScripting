::Batch Programlama Notları 2 | A-Z Batch::

::Değişkenler::
set /A varname=Fazz
%varname%

::Ekrana Bastırmak::
@echo off
echo %varname%

::Matematiksel Işlemler::
set /A sum=1+1
set /A sum1=5*5
set /A sum2=10-5
set /A sum3=6/2
echo %sum% %sum1% %sum2% %sum3%
set /p End=End:

::Not : set /A Normal değer /P ise İstenen değer(input) Olur.::

::Input::
Welcome! Please Enter your name
set /p Name=You:
echo Hello! %Name%

::Labels::
goto :Hello
:Hello
@echo off
cls
color a
echo Hello World!

:Enter
echo Hello! User. Whatsup?
set /p Mail:Mail:
echo Your Mail : %Mail%

::Fonksiyonlar::
@echo off
goto :main

:say_something
	echo I am saying %~1 and %~2!
goto :eof

:main
	echo This is the main function!

	call :say_something tiger boat
	echo End
goto :eof

goto :main2

:new_function
	echo        Changing a variable...
	set variable=VALUE
goto :eof


:main2
	echo This is the main function
	call :new_function
	echo %variable%
	echo The variables new value is %variable%
goto :eof

:local_function
setlocal
	echo This is Local Variable
	set local_var=5
endlocal
goto eof

::İf - Else::
@echo off

goto :main
:main
setlocal
	echo Hello World!
	echo .

	set /a food=10
	set /a needed_food=10

	if %food% equ %needed_food% (
		echo We have enough food!
	)else(
		echo We do not have enough food!
	)

	::equ = Eşit | neq = Eşit değil | lss = 'den daha az | leq = daha az veya eşit | gtr = 'den daha büyük | geq = daha büyük veya eşit::

	echo .
	echo Goodbye World!
endlocal

goto :eof

::While Loop::
@echo off
setlocal EnableDelayedExpansion
goto:main



:main
setlocal

set /a counter=0
set /a limit=10

:loop
if !counter! lss !limit! (

	echo !counter!
	set /a counter=!counter!+1

	goto :loop
)

echo .
echo Outside of loop^^!
endlocal

::For Loop::
@echo off

setlocal EnableDelayedExpansion
goto :main

:main
setlocal
	
	set string=Hello World^^!
	echo !string!
	echo.

	set /a test=3

	for %%g in ( 1 2 3 4 5 ) do (
		echo %%g
		if !test! equ %%g (
			echo !test! is %%g
		)
	)

endlocal
goto :eof
