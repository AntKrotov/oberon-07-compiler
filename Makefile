lin64:
	./Compiler ./source/Compiler.ob07 linux64exe -out ./source/Compiler -stk 2
lin32:
	./Compiler ./source/Compiler.ob07 linux32exe -out ./source/Compiler32 -stk 2
win64:
	./Compiler ./source/Compiler.ob07 win64con -out ./source/Compiler.exe -stk 2
win32:
	./Compiler ./source/Compiler.ob07 win32con -out ./source/Compiler32.exe -stk 2
col:
	./Compiler ./source/Compiler.ob07 kosexe -out ./source/Compiler.kex -stk 2