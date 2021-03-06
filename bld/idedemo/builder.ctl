# IDE demo Builder Control file
# ==============================

set PROJDIR=<CWD>
set PROJNAME=idedemo

[ INCLUDE <OWROOT>/build/master.ctl ]
[ LOG <LOGFNAME>.<LOGEXT> ]

[ INCLUDE <OWROOT>/build/defrule.ctl ]

[ BLOCK <1> rel ]
    cdsay <PROJDIR>

[ BLOCK <1> rel cprel ]
#======================
    <CCCMD> threed/os2/os2_3d.dll   <OWRELROOT>/samples/ide/
    <CCCMD> threed/os2/os2_3d.dll   <OWRELROOT>/samples/ide/os2/
    <CCCMD> threed/os2/os2_3d.dll   <OWRELROOT>/samples/ide/fortran/
    <CCCMD> threed/os2/os2_3d.dll   <OWRELROOT>/samples/ide/fortran/os2/
    <CCCMD> threed/nt/nt_3d.dll     <OWRELROOT>/samples/ide/win32/
    <CCCMD> threed/nt/nt_3d.dll     <OWRELROOT>/samples/ide/fortran/win32/
    <CCCMD> threed/win/win_3d.dll   <OWRELROOT>/samples/ide/win/
    <CCCMD> threed/win/win_3d.dll   <OWRELROOT>/samples/ide/win386/
    <CCCMD> threed/win/win_3d.dll   <OWRELROOT>/samples/ide/fortran/win/
    <CCCMD> threed/win/win_3d.dll   <OWRELROOT>/samples/ide/fortran/win386/

    <CPCMD> src/*                   <OWRELROOT>/samples/ide/
    <CPCMD> src/fortran/*           <OWRELROOT>/samples/ide/fortran/
    <CPCMD> src/fortran/win32/*     <OWRELROOT>/samples/ide/fortran/win32/
    <CPCMD> src/fortran/os2/*       <OWRELROOT>/samples/ide/fortran/os2/
    <CPCMD> src/fortran/win/*       <OWRELROOT>/samples/ide/fortran/win/
    <CPCMD> src/fortran/win386/*    <OWRELROOT>/samples/ide/fortran/win386/
    <CPCMD> src/os2/*.tgt           <OWRELROOT>/samples/ide/os2/
    <CPCMD> src/os2/box.obj         <OWRELROOT>/samples/ide/fortran/os2/
    <CPCMD> src/os2/drawroom.obj    <OWRELROOT>/samples/ide/fortran/os2/
    <CPCMD> src/os2/furnitu.obj     <OWRELROOT>/samples/ide/fortran/os2/
    <CPCMD> src/win/*.tgt           <OWRELROOT>/samples/ide/win/
    <CPCMD> src/win/box.obj         <OWRELROOT>/samples/ide/fortran/win/
    <CPCMD> src/win/drawroom.obj    <OWRELROOT>/samples/ide/fortran/win/
    <CPCMD> src/win/furnitu.obj     <OWRELROOT>/samples/ide/fortran/win/
    <CPCMD> src/win386/*.tgt        <OWRELROOT>/samples/ide/win386/
    <CPCMD> src/win386/box.obj      <OWRELROOT>/samples/ide/fortran/win386/
    <CPCMD> src/win386/drawroom.obj <OWRELROOT>/samples/ide/fortran/win386/
    <CPCMD> src/win386/furnitu.obj  <OWRELROOT>/samples/ide/fortran/win386/
    <CPCMD> src/win32/*.tgt         <OWRELROOT>/samples/ide/win32/
    <CPCMD> src/win32/box.obj       <OWRELROOT>/samples/ide/fortran/win32/
    <CPCMD> src/win32/drawroom.obj  <OWRELROOT>/samples/ide/fortran/win32/
    <CPCMD> src/win32/furnitu.obj   <OWRELROOT>/samples/ide/fortran/win32/

[ BLOCK . . ]
#============
cdsay <PROJDIR>
