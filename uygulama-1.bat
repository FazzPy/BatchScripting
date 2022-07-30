@echo off

title Kriptolama
mode con cols=50 lines=10
cls
color 0b

:sifre
set /p pass=Sifre:
if %pass%==1234 (goto basarili) else (goto basarisiz)

:basarisiz
mode con cols=50 lines=10
cls
color 0b
echo SIFRE YANLIS
set /a count+=1
set /a left=3-%count% goto
if %count%==3 goto cikis
echo %left% DENEME HAKKINIZ KALDI...
pause >nul
goto sifre

:cikis
mode con cols=50 lines=10
cls
color 0b
echo CIKIS YAPILIYOR...
echo SIFREYI OGRENDE GEL...
timeout /NOBREAK /T 3 >nul
exit

:basarili
mode con cols=50 lines=10
cls
color 0b
echo GIRIS BASARILI. HOSGELDIN...
timeout /NOBREAK /T 3 >nul
echo Kriptolama basliyor...
timeout /NOBREAK /T 3 >nul
cls

ping 8.8.8.8

echo BASARILI SEKILDE TAMAMLANDI...
timeout /NOBREAK /T 3 >nul

exit


::https://battoexeconverter.com/::
