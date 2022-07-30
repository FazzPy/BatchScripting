:: Batch Script Programlama Notları ::

::Batch Script Command Promptta kod çalıştırmak için kullanılır.::

::Siber Güvenlik ve Otomasyon gibi işlerde kullanılır. Virüs vs. Çok kolay şekilde yazılı ve Exe halinde çevrilir.::

::Bat dosyaları Virüs olarak algılanmaz ve Virüs oluşturucu programlarda çok yaygındır.::

ping 8.8.8.8 

:: Normalde olduğu gibi ping atar.::

ping 8.8.8.8 > kayıt.txt

::Yaptığı işlemleri txt dosyasına kaydeder. (>> Olursa üstüne ekliyerek devam eder.)::

echo %time%-%date% >> kayıt.txt

::Altına zaman ve tarih bilgisi verir.::

echo _______________________ >> kayıt.txt

::2. Komut olacağı için her kaydın altına ___... yazacaktır.::

::Uygulamalı::

@echo off

::Satır başlarını yok eder.::

title Fazz

::Konsol başlığını değiştirir::

mode con cols=50 lines=10

::Pencere boyutunu değiştirir::

cls

color 0b

::Ekranı temizler ve Yazı rengi değiştirir::

set /p pw=Password : 

::Değişken belirler::

if %pw%==1234 (go to basarili) else (go to basarisiz)

::Girilen şifre 1234 ise basarili değilse basarisiz olur::

:basarisiz
mode con cols=50 lines=10
cls
color 0b
echo SIFRE YANLIS
set /a count+=1
set /a left=3-%count% goto
if %count%==3 goto cikis
echo %count% DENEME HAKKINIZ KALDI...
pause >nul

:cikis
mode con cols=50 lines=10
cls
color 0b
echo CIKIS YAPILIYOR...
msg * SIFREYI OGRENDE GEL...
exit

:basarili
mode con cols=50 lines=10
cls
color 0b
echo GIRIS BASARILI. HOSGELDIN...
timeout /NOBREAK /T 3 >nul
echo ISLEM BASLIYOR...

::BAŞLANGIÇ NOTLARI BURAYA KADAR BUNDAN SONRA UYGULAMA - 1 VAR ONDAN SONRA NOTLAR DEVAM EDİCEK::
