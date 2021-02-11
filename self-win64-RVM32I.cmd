Compiler.exe ./tools/RVMxI.ob07 win32con -nochk a -out RVM32I.exe
Compiler.exe source\Compiler.ob07 rvm32i -out Compiler32.bin -lower
RVM32I.exe Compiler32.bin -dis Compiler32.txt
RVM32I.exe Compiler32.bin -run source\Compiler.ob07 rvm32i -out Compiler32.bin -lower
@pause