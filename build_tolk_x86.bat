
cl /nologo /c /O2 /EHsc /GL /GR- /MT /vmb /vms /MP /W4 /WL /D_EXPORTING /D_UNICODE /D_WINDLL /D_WINDOWS /DNDEBUG /DWIN32 /DUNICODE /Fobin\win32\ src\*.c src\*.cpp src\java\*.cpp src\reaper\*.cpp

rc /nologo /n /d _WIN32 /fo bin\win32\Tolk.res src\Tolk.rc

link /nologo /DLL /INCREMENTAL:NO /LTCG /MACHINE:X86 /MANIFEST:NO /OPT:REF /OPT:ICF /VERSION:"1.0" /OUT:bin\win32\Tolk.dll User32.Lib Ole32.Lib OleAut32.Lib bin\win32\*.obj bin\win32\Tolk.res

del bin\win32\*.obj bin\win32\Tolk.exp bin\win32\Tolk.res
