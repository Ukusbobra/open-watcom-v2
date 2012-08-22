# cvpack Builder Control file
# ===========================

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
    <CPCMD> dos386/cvpack.exe    <OWRELROOT>/binw/cvpack.exe

  [ IFDEF (os_os2 "") <2*> ]
    <CPCMD> os2386/cvpack.exe    <OWRELROOT>/binp/cvpack.exe

  [ IFDEF (os_nt "") <2*> ]
    <CPCMD> nt386/cvpack.exe     <OWRELROOT>/binnt/cvpack.exe

  [ IFDEF (cpu_axp) <2*> ]
    <CPCMD> ntaxp/cvpack.exe     <OWRELROOT>/axpnt/cvpack.exe

  [ IFDEF (os_qnx) <2*> ]
    <CPCMD> qnx386/cvpack.exe    <OWRELROOT>/qnx/binq/cvpack

  [ IFDEF (os_linux "") <2*> ]
    <CPCMD> linux386/cvpack.exe  <OWRELROOT>/binl/cvpack

[ BLOCK <1> clean ]
#==================
    pmake -d build <2> <3> <4> <5> <6> <7> <8> <9> -h clean

[ BLOCK . . ]
#============

cdsay <PROJDIR>