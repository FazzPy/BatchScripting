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

