
cl /nologo /c /O2 /EHsc /GL /GR- /GS- /Gw /LD /MP /W4 /WL /D_EXPORTING /D_UNICODE /D_WINDOWS /D_WITH_JNI /DNDEBUG /DWIN32 /DUNICODE /Fobin\x86\ src\*.c src\*.cpp src\java\*.cpp

rc /nologo /n /d _WIN32 /fo bin\win32\Tolk.res src\Tolk.rc

link /nologo /DLL /INCREMENTAL:NO /LTCG /MACHINE:X86 /MANIFEST:NO /OPT:REF /OPT:ICF /VERSION:"1.0" /OUT:bin\win32\Tolk.dll User32.Lib Ole32.Lib OleAut32.Lib bin\win32\*.obj bin\win32\Tolk.res

del bin\x86\*.obj bin\x86\Tolk.res
