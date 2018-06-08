c: C/main.c
	gcc -o rgba2float $<

cpp: Cpp/main.cpp
	g++ -o rgba2float $<

install: rgba2float
	sudo cp $< /usr/local/bin

.PHONY: clean
clean:
	rm rgba2float
