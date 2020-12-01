# Demo code for converting RGBA to Float color values.
#
# CC0 1.0 Universal (CC0 1.0) Public Domain Dedication
# https://creativecommons.org/publicdomain/zero/1.0/


objectsLua = rgba2float \
	     rgba2float.luac \

c: c/main.c
	gcc -o rgba2float $<

cpp: cpp/main.cpp
	g++ -o rgba2float $<

pascal: pascal/main.pas
	fpc -o"./rgba2float" $<
	rm main.o

lua: lua/main.lua
	echo '#!/usr/bin/env lua' >> rgba2float
	echo 'dofile("rgba2float.luac")' >> rgba2float
	luac -o rgba2float.luac $<
	chmod +x rgba2float

install: rgba2float
	cp $< /usr/local/bin

installLua:
	cp $(objectsLua) /usr/local/bin

.PHONY: clean
clean:
	rm rgba2float rgba2float.luac
