#sudo apt-get install fpc
#sudo apt-get install lua5.2

objectsLua = rgba2float \
	     rgba2float.luac \

c: C/main.c
	gcc -o rgba2float $<

cpp: Cpp/main.cpp
	g++ -o rgba2float $<

pascal: Pascal/main.pas
	fpc -o"./rgba2float" $<
	rm main.o

lua: Lua/main.lua
	echo '#!/usr/bin/env lua' >> rgba2float
	echo 'dofile("rgba2float.luac")' >> rgba2float
	luac -o rgba2float.luac $<
	chmod +x rgba2float

install: rgba2float
	sudo cp $< /usr/local/bin

installLua:
	sudo cp $(objectsLua) /usr/local/bin

.PHONY: clean
clean:
	rm rgba2float rgba2float.luac
