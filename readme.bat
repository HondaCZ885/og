@echo  off
:Hra
title Hra
color f
echo ...............
echo ..Zadej jmeno..
echo ...............
set /p name=
goto rada
:rada
cls
color c
echo                        RADA
color f
echo Kdyz nebude ani jedna moznost z nabidky spravne zadejte "nikdo"
echo Odpovedi urcite tak ze napisete bud "a" nebo "b" a nebo "c" a zmacknete ENTER
pause
goto Otazky
:Otazky
title 1. otazka
color d
:1
cls
color b
echo Tak prejdeme k prvni otazce
ping localhost -n 2 >nul
cls
echo ....................................
echo ..Co znamena slovensky cucorietka?..
echo            a) boruvka
echo            b) malina
echo ....................................
set /p o=
if %o% == a goto dale
if %o% == b goto lose
:lose
color c
cls
echo bohuzel jste %name%
ping localhost -n 2 >nul
echo PROHRAL/A
echo Pro zahrati znovu stsknete           ENTER
pause
cls
goto Hra
:dale
cls
title 2.otazka
echo prejdeme k dalsi otazce
ping localhost -n 3 >nul
cls
echo ........................
echo ..Hlavni mesto Nemecka..
echo      a)Budapest
echo      b)Berlin
echo ........................
set /p t=
if %t% == b goto posledni
if %t% == a goto lose
:posledni
cls
color b
title zaver
echo Vyborne dostal/a jste se na 3 otazku
ping localhost -n 3 >nul
cls
echo .................................
echo ..Jak se jmenuje prezident USA?..
echo          a)Zeman
echo          b)Klaus
echo          c)Ja
echo ................................
set /p a=
if %a% == b goto lose
if %a% == a goto lose
if %a% == c goto lose
if %a% == nikdo goto 4
:4
cls
color b
title 4.otazka
echo Jdeme na 4.otazku
ping localhost -n 3 >nul
cls
echo ..................................
echo ..Kdo byl zakladatel Microsoftu?..
echo          a)Steve Jobs
echo          b)Bedrich Smetana
echo          c)Bill Gates
echo ................................
set /p i=
if %i% == b goto lose
if %i% == a goto lose
if %i% == c goto U
if %i% == nikdo goto lose
:U
cls
echo Tak prejdeme k posledni otazce
ping localhost -n 2 >nul
title 5.otazka
cls
color e
echo ............................
echo ..Kolik listu ma borovice?..
echo          a)0
echo          b)120 254 005
echo          c)150 000
echo ................................
set /p x=
if %x% == b goto lose
if %x% == a goto Vyhra
if %x% == c goto lose
if %x% == nikdo goto lose

:Vyhra
cls
color a
echo Gratuluji %name%
ping localhost -n 2 >nul
cls
echo Gratuluji %name% ,vyhral/a jste!!
pause
cls

echo     PRO ZAHRATI ZNOVU STISKNETE
echo                                    ENTER
pause
cls
goto Hra

Stáhnout hru  2.62kB
22. AUTOR - TonCZ (BAT) - Quiz hra
Kód:

@echo off
color f
:menu1
cls 
title Napoveda
echo                           Napoveda
echo odpoved si vyberes tak ze zadas jeji cislo a potvrdis entrem!
echo tak hodne stesti a bav se! zacni zmacknutim tlacitka (a) a enter
set /p a=
if %a% == a goto menu2

:menu2
title Hlavní Menu
echo.
echo  _____________ 
echo / 1) start!   /
echo /_____________/
echo / 2) Ostatni  /
echo /_____________/
echo / 3) Exit :(  /
echo /_____________/
set /p number=

if %number% == 1 goto startgame
if %number% == 2 goto help
if %number% == 3 exit

:startgame
cls
color 9
title Vyber si jmeno
echo ...............
echo Vyber si jmeno
echo ...............
set /p name=
echo Ahoj %name%!
echo Chces zacit hrat quiz? (a/n)
set /p start=
if %start% == a goto level1
if %start% == n goto menu
goto startgame

:help
cls
title Ostatni
color d
echo .................................................
echo Vytvoril: TonCZ
echo Napad: Internet
echo Vytvoril jsem to sam ale nevim jak dlouho.
echo Znacka notebooku: Asus
echo CzQuiz TonCZ 2016/2017©
echo .................................................

echo Jit zpet? (a/n)
set /p menugoto=
if %menugoto% == a goto menu2
if %menugoto% == n goto exit
goto help

:exit
goto exit

:level1
cls
title Otazka 1
color b 
echo Dobre, %name%  Hra zacina!
pause <dir
echo  ...................
echo   kolik je 10 + 10?
echo  ...................
echo        1) 1
echo        2) 20
echo        3) 500

set /p answer1=
if %answer1% == 1 goto wrong1
if %answer1% == 2 goto correct1
if %answer1% == 3 goto wrong1
goto level1

:correct1
title Spravne
echo .................................
echo Spravne %name% Dalsi level? (a/n)
echo .................................
set /p NL1=

if %NL1% == a goto level2
if %NL1% == n goto menu
goto correct1

:Wrong1
title Spatne
Echo Smula, Mas to spatne %name%. chces to skusit Znovu? (a/n)
set /p WA1=
if %WA1% == a goto level1
if %WA1% == n goto menu
goto wrong1

:level2
cls
title Otazka 2
echo ......................
echo  Kdo je na stokorune?
echo ......................
echo     1) Karel IV.
echo     2) Karel Gott
echo     3) Tomas Procka
echo     4) Barack Obama
set /p aa=
if %aa% == 1 goto correct2
if %aa% == 1 goto wrong2
if %aa% == 1 goto wrong2
if %aa% == 1 goto wrong2
goto level2

:correct2
title Spravne
echo ........................................
echo Spravne %name%! Chces dalsi level? (a/n)
echo ........................................
set /p NL2=

if %NL2% == a goto level3
if %NL2% == n goto menu
goto correct1

:wrong2
cls
title Spatne
echo Prohral si %name%! Chces to Opakovat? (a/n)
set/p retry=
if %retry% == a goto level1
if %retry% == n goto exit
goto wrong2

:level3
cls 
title Otazka 3
echo ................................
echo Jak se jmenuje OS od microsoftu?
echo ................................
echo          1) MacOS
echo          2) Windows
echo          3) Linux
set /p aa=
if %aa% == 1 goto wrong3
if %aa% == 2 goto correct3
if %aa% == 3 goto wrong3
goto level3

:correct3
cls
title Spravne
echo ........................................
echo Spravne %name%! Chces dalsi level? (a/n)
echo ........................................
set /p NL3=

if %NL3% == a goto level4
if %NL3% == n goto menu
goto correct3

:wrong3
cls
title Spatne
echo Prohral si %name%! Chces to Opakovat? (a/n)
set/p retry=
if %retry% == a goto level1
if %retry% == n goto exit
goto wrong3

:level4
cls 
title Otazka 4
echo ................................................
echo Jak se jmenu cesky nejmladsi popularni YouTuber?
echo ................................................
echo                1) Vadak
echo                2) AxiCz 151
echo                3) Mishovy Silenosti
set /p NL5=
if %NL5% == 1 goto wrong4
if %NL5% == 2 goto wrong4
if %NL5% == 3 goto correct4
goto level4

:correct4
cls
title Spravne
echo .................................
echo Spravne! Chces dalsi level? (a/n)
echo .................................
set /p NL4=

if %NL4% == a goto level5
if %NL4% == n goto menu
goto correct4

:wrong4
cls
title Spatne
echo Prohral si %name%! Chces to Opakovat? (a/n)
set/p retry=
if %retry% == a goto level1
if %retry% == n goto exit
goto wrong2

:level5
cls
title Otazka 5
echo ................................................ 
echo Jak se nazyva nejznamejsi ceska pamatka v praze?
echo ................................................
echo                1) Hodinky
echo                2) Orloj
echo                3) Mostek
set /p NL6=
if %NL6% == 1 goto wrong5
if %NL6% == 2 goto correct5
if %NL6% == 3 goto wrong5
goto level5

:correct5
cls
title Spravne
echo ...........................
echo Spravne! Dalsi level? (a/n)
echo ...........................
set /p NL7=

if %NL7% == a goto level6
if %NL7% == n goto menu
goto correct5


:wrong5
cls
echo Prohral si %name%! Chces to Opakovat? (a/n)
set/p retry=
if %retry% == a goto level1
if %retry% == n goto exit
goto wrong5

:level6
cls 
title Otazka 6
echo ...............................................
echo Co nejznamejsiho je postaveno pres reku Vltavu?
echo ...............................................
echo                1) Karluv Most
echo                2) Karlstejn
echo                3) Nekazanka
set /p NL8=
if %NL8% == 1 goto correct6
if %NL8% == 2 goto wrong5
if %NL8% == 3 goto wrong5
goto level6

:correct6
cls
title Spravne
echo Spravne %name%! Chces dalsi level? (a/n)
set /p NL9=

if %NL9% == a goto level7
if %NL9% == n goto menu
goto correct7

:wrong5
cls
title Spatne
echo Prohral si %name%! Chces to Opakovat? (a/n)
set/p retry=
if %retry% == a goto level1
if %retry% == n goto exit
goto wrong5

:level7
cls 
title Otazka 7
echo .......................................
echo V jakém programu je tato hra vytvorena?
echo .......................................
echo           1) Movie Maker
echo           2) Fraps
echo           3) Poznamkovy Blok
set /p NL11=
if %NL11% == 1 goto wrong5
if %NL11% == 2 goto wrong5
if %NL11% == 3 goto correct7
goto level6

:correct7
cls
echo Spravne %name%! Chces dalsi level? (a/n)
set /p NL12=

if %NL12% == a goto level8
if %NL12% == n goto menu
goto correct7

:level8
cls 
title Otazka 8
echo ...........................
echo Co je napsane za programem?
echo ...........................
echo          1) huh
echo          2) exe
echo          3) bat
set /p NL13=
if %NL13% == 1 goto wrong5
if %NL13% == 2 goto wrong5
if %NL13% == 3 goto correct8
goto level6

:correct8
cls
title Spravne
echo ........................................
echo Spravne %name%! Chces dalsi level? (a/n)
echo ........................................
set /p NL14=

if %NL14% == a goto level9
if %NL14% == n goto menu
goto correct7

:wrong8
cls
echo Spatne Chces to skusit znova? (a/n)
set/p retry=
if %retry% == a goto level1
if %retry% == n goto exit
goto wrong5

:level9
cls 
title Otazka 9
echo ..........................
echo Jaky je cely nazev hry GTA
echo ..........................
echo    1) Grand Thef Auto
echo    2) Get The Anannas
echo    3) Get The Auto
set /p NL15=
if %NL15% == 1 goto correct9
if %NL15% == 2 goto wrong5
if %NL15% == 3 goto wrong5
goto level6

:correct9
cls
title Spravne
echo ........................................
echo Spravne %name%! Chces dalsi level? (a/n)
echo ........................................
set /p NL16=

if %NL16% == a goto level10
if %NL16% == n goto menu
goto correct7

:wrong
cls
echo Prohral si! Chces to Opakovat? (a/n)
set/p retry=
if %retry% == a goto level1
if %retry% == n goto exit
goto wrong5

:level10
cls
title Otazka 10
echo ...........................
echo Kdo byl prvni prezident CR?
echo ...........................
echo     1) Ondrej Havelka
echo     2) Vaclav Havel
echo     3) Milos Zeman
set /p NL17=
if %NL17% == 1 goto wrong5
if %NL17% == 2 goto correct10
if %NL17% == 3 goto wrong5
goto level10

:correct10
cls
title Spravne
echo ........................................
echo Spravne %name%! Chces dalsi level? (a/n)
echo ........................................
set /p NL18=

if %NL18% == a goto level11
if %NL18% == n goto menu
goto correct7
                        

goto correct10

:wrong
cls
echo Prohral si! Chces to Opakovat? (a/n)
set/p retry=
if %retry% == a goto level1
if %retry% == n goto exit
goto wrong5

:level11
cls
title Otazka 11
echo ....................
echo Kolik ma listu smrk?
echo ....................
echo    1) 111 555 444
echo    2) 21
echo    3) 0
set /p NL19=
if %NL19% == 1 goto wrong5
if %NL19% == 2 goto wrong5
if %NL19% == 3 goto correct11
goto level10

:correct11
cls
title Spravne
echo ........................................
echo Spravne %name%! Chces dalsi level? (a/n)
echo ........................................
set /p NL20=

if %NL20% == a goto level12
if %NL20% == n goto menu
goto correct11                    

:wrong
cls
echo Prohral si! Chces to Opakovat? (a/n)
set/p retry=
if %retry% == a goto level1
if %retry% == n goto exit
goto wrong5

:level12
cls
title Otazka 12
echo ...........................
echo Co znamena slovensky dievča
echo ...........................
echo    1) Holka
echo    2) kluk
echo    3) zmrzlina
set /p NL20=
if %NL20% == 1 goto Oznameni
if %NL20% == 2 goto wrong5
if %NL20% == 3 goto wrong5
goto level12

:Oznameni
cls
title Zprava
echo .....................................................
echo Odemcen herni mod ,,Volna Hra" Chces pokracovat (a/n)
echo .....................................................
set /p NL21=

if %NL21% == a goto menu3
if %NL21% == n goto menu
goto correct11                    

:swrong
cls
echo Prohral si! Chces se vratit do nabidky? (a/n)
set/p sretry=
if %sretry% == a goto menu3
if %sretry% == n goto exit
goto wrong5

:menu3
cls
title Volna Hra
color 70
echo ..........................................
echo Z levelu si lze vybrat pomoci jejich cisel
echo ..........................................
echo              1) level 13 
echo              2) level 14
echo              3) level 15
echo              4) level 16
echo              5) level 17
echo              6) level 18
echo              7) level 19
echo              8) level 20
echo              9) bonus level 1
echo              10) bonus level 2
echo.
echo.
echo               k) Konec!
set /p NL66=

if %NL66% == 1 goto level13
if %NL66% == 2 goto level14
if %NL66% == 3 goto level15
if %NL66% == 4 goto level16
if %NL66% == 5 goto level17
if %NL66% == 6 goto level18
if %NL66% == 7 goto level19
if %NL66% == 8 goto level20
if %NL66% == 9 goto bonuslevel1
if %NL66% == 10 goto bonuslevel2
if %NL66% == k goto Rozlouceni
goto menu3

:level13
cls
title Otazka 13
color b
echo .................
echo Kdo zalozil apple
echo .................
echo  1) Bill Gates
echo  2) Steve Jobs
echo  3) Notch 
set /p NL25=
if %NL25% == 1 goto swrong
if %NL25% == 2 goto correct13
if %NL25% == 3 goto swrong
goto level10

:correct13
cls
title Spravne
echo ..................................................
echo Spravne %name%! Vratit se do nabidky levelu? (a/n)
echo ..................................................
set /p NL26=

if %NL26% == a goto menu3
if %NL26% == n goto menu
goto correct13                    

:level14
cls
title Otazka 14
color b
echo ........................
echo Jakou hru zalozil Notch?
echo ........................
echo    1) Cave Game
echo    2) GTA
echo    3) Mine.Craft
set /p NL25=
if %NL25% == 1 goto correct14
if %NL25% == 2 goto swrong
if %NL25% == 3 goto swrong
goto level10

:correct14
cls
title Spravne
echo ..................................................
echo Spravne %name%! Vratit se do nabidky levelu? (a/n)
echo ..................................................
set /p NL26=

if %NL26% == a goto menu3
if %NL26% == n goto menu2
goto correct13

:level15
cls
title Otazka 15
color b
echo .................................
echo Kde pusobi prezident Barack Obama
echo .................................
echo          1) USA
echo          2) Czech Republic
echo          3) UK
set /p NL27=
if %NL27% == 1 goto correct14
if %NL27% == 2 goto swrong
if %NL27% == 3 goto swrong
goto level15

:level16
cls
title Otazka 16
color b
echo ...................
echo Jak napsat znak ! ?
echo ...................
echo    1) shift + ů
echo    2) shift + !
echo    3) shift + 9
set /p NL28=
if %NL28% == 1 goto swrong
if %NL28% == 2 goto correct14
if %NL28% == 3 goto swrong
goto level14

:level17
cls
title Otazka 17
color b
echo .....................................
echo Kde je nejvetsi koupaliste v ostrave?
echo .....................................
echo       1) V Zabrehu
echo       2) Na Ostravici
echo       3) Ve Vresine
set /p NL29=
if %NL29% == 1 goto swrong
if %NL29% == 2 goto swrong
if %NL29% == 3 goto correct14
goto level14

:level18
cls
title Otazka 18
color b
echo ...............................................
echo Na jake znacce notebooku je tato hra vytvorena?
echo ...............................................
echo               1) Acer
echo               2) Asus
echo               3) My Audio
echo.
echo (viz. Ostatni)
set /p NL30=
if %NL30% == 1 goto swrong
if %NL30% == 2 goto correct14
if %NL30% == 3 goto swrong
goto level14

:level19
cls
title Otazka 19
color b
echo ........................................
echo Jaka je nejznamejsi stavebnice z Danska?
echo ........................................
echo              1) Cobi
echo              2) Minecraft
echo              3) Lego
set /p NL31=
if %NL31% == 1 goto swrong
if %NL31% == 2 goto swrong
if %NL31% == 3 goto correct14
goto level14

:level20
cls
title Otazka 20
color b
echo ..........................
echo Kde ziju (myslim tim stat)
echo ..........................
echo    1) Slovenska Republika
echo    2) Ceska Republika
echo    3) Anglie
set /p NL32=
if %NL32% == 1 goto swrong
if %NL32% == 2 goto correct14
if %NL32% == 3 goto swrong
goto level14

:bonuslevel1
cls
title Bonusova Otazka 1
color b
echo ................
echo Libi se vam hra?
echo .................
echo   1) Ano
echo   2) Ne
echo   3) Nevim
set /p NL32=
if %NL32% == 1 goto bcorrect1
if %NL32% == 2 goto bcorrect1
if %NL32% == 3 goto bwrong1
goto level14

:bcorrect1
cls
color 70
title Bonusova Otazka Uhodnuta
echo ........................................................
echo To jsem netusil ale cos chces se vratit do nabidky (a/n)
echo ........................................................
set /p NL88=
if %NL88% == a goto menu3
if %NL88% == n goto menu2

:bwrong1
cls
color 70
title Bonusova Otazka Neuhodnuta
echo ..............................
echo Jak nevim, nevim neni odpoved!
echo ..............................
echo.
echo.
echo pro pokracovani zmackni nejake divne tlacitko
echo                   o
pause >dir
goto bonuslevel1

:bonuslevel2
cls
title Typovacka :) 
color b
echo ...............
echo Jak se jmenuji?
echo ...............
echo   1) Tomas Procka
echo   2) Petr Foltys
echo   3) Antonin Maren
set /p NL32=
if %NL32% == 1 goto bwrong1
if %NL32% == 2 goto bwrong1
if %NL32% == 3 goto bcorrect1
goto level14

:bcorrect1
cls
color 70
title Bonusova Otazka Uhodnuta
echo .................................................................
echo Odkud me sakra znas! ja te teda neznam (mozna) zmackni cokoliv... 
echo .................................................................
pause >dir
goto menu3

:bwrong1
cls
color 70
title Bonusova Otazka Neuhodnuta
echo ......................................................
echo No tak takhle se teda nejmenuju! Tak si neco zmackni..
echo ......................................................
pause >dir
goto menu3

:Rozlouceni
cls
title Tak cau!
echo               Konec
echo  Tak Ahoj %name%, Doufam ze si si
echo  uzil zabavu (to ale u tohoto quizu
echo  nejde) :) Urcite hru zdilej a pro
echo  konec zmackni cokoliv... to uz jsem
echo  reikal...
pause >dir
exit
