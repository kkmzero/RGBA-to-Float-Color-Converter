#sudo apt-get install fpc

c: C/main.c
	gcc -o rgba2float $<

cpp: Cpp/main.cpp
	g++ -o rgba2float $<

pascal: Pascal/main.pas
	fpc -o"./rgba2float" $<
	rm main.o

install: rgba2float
	sudo cp $< /usr/local/bin

.PHONY: clean
clean:
	rm rgba2float
