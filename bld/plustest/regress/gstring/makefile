plustest_name = gstring

!include testenv.mif

!ifdef test1
test_flags = -d2
alt_error=01
!else
test_flags = -ox-d1
alt_error=00
!endif

test_flags += -I.

test_flags_386 = $(test_flags) -mf
test_flags_i86 = $(test_flags) -ml
test_flags_axp = $(test_flags)

stack_386=opt stack=8k
stack_i86=opt stack=4k
stack_axp=opt stack=8k

strtest.$(exe) : strtest.obj string.obj strngrep.obj

test : .symbolic clean start_test test.lnk strtest.$(exe)
    diff $(%ERROR_FILE) strtest.chk
    %append $(log_file) PASS $(%__CWD__)
    @%make clean

start_test : .symbolic
    @if exist s$(arch)_$(alt_error).sav rm s$(arch)_$(alt_error).sav
    @set ERROR_FILE=exec.out
    %create $(%ERROR_FILE)

save : .symbolic
    @if exist exec.out cp exec.out s$(arch)_$(alt_error).sav

clean : .procedure
    @%make common_clean
