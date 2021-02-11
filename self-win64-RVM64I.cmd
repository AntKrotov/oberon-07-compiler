Compiler.exe ./tools/RVMxI.ob07 win64con -nochk a -out RVM64I.exe
Compiler.exe source\Compiler.ob07 rvm64i -out Compiler64.bin -lower
RVM64I.exe Compiler64.bin -dis Compiler64.txt
RVM64I.exe Compiler64.bin -run source\Compiler.ob07 rvm64i -out Compiler64.bin -lower
@pause