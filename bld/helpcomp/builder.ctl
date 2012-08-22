# WHC Builder Control file
# =========================

set PROJDIR=<CWD>

[ INCLUDE <OWROOT>/build/master.ctl ]
[ LOG <LOGFNAME>.<LOGEXT> ]

cdsay .

[ BLOCK <1> build rel2 ]
#=======================
    pmake -d build <2> <3> <4> <5> <6> <7> <8> <9> -h

[ BLOCK <1> rel2 ]
#=================
    cdsay <PROJDIR>

[ BLOCK <1> rel2 cprel2 ]
#========================

  [ IFDEF (os_dos "") <2*> ]
    <CPCMD> dos386/whc.exe      <OWRELROOT>/binw/

  [ IFDEF (os_os2 "") <2*> ]
    <CPCMD> os2386/whc.exe      <OWRELROOT>/binp/

  [ IFDEF (os_nt "") <2*> ]
    <CPCMD> nt386/whc.exe       <OWRELROOT>/binnt/

  [ IFDEF (os_linux "") <2*> ]
    <CPCMD> linux386/whc.exe    <OWRELROOT>/binl/whc

[ BLOCK <1> clean ]
#==================
    pmake -d build <2> <3> <4> <5> <6> <7> <8> <9> -h clean

[ BLOCK . . ]
#============

cdsay <PROJDIR>