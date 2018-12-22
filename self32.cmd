Compiler32.exe source\Compiler.ob07 source\Compiler32.exe con -stk 1 -pic
REN Compiler32.exe Compiler32old.exe
MOVE source\Compiler32.exe Compiler32.exe
Compiler32.exe source\Compiler.ob07 source\Compiler32.asm con -stk 1 -pic
@pause
