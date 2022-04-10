lin64:
	./Compiler ./source/Compiler.ob07 linux64exe -out ./bin/Compiler -stk 2
lin32:
	./Compiler ./source/Compiler.ob07 linux32exe -out ./bin/Compiler32 -stk 2
lin64sample:
	./Compiler ./samples/Linux/Hello.ob07 linux64exe -out ./bin/hello -stk 2
	./bin/hello
win64:
	./Compiler ./source/Compiler.ob07 win64con -out ./bin/Compiler.exe -stk 2
win32:
	./Compiler ./source/Compiler.ob07 win32con -out ./bin/Compiler32.exe -stk 2
col:
	./Compiler ./source/Compiler.ob07 kosexe -out ./bin/Compiler.kex -stk 2