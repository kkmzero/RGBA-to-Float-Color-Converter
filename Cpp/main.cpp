/*Copyright (c) 2018, Ivan Kmeťo
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/

#include <iostream>
#include <iomanip>

int main()
{
	int r, g, b, a, dec;
	float fr, fg, fb, fa;

	std::cout << "RGBA to Float Color Converter\n" << std::endl;
	std::cout << "Please enter RGBA values in range [0-255]" << std::endl;

	std::cout << "[R]Red: ";
	std::cin >> r;
	while (r > 255 || r < 0) { 
		std::cout << "(!) Please enter valid number in range [0-255]" << std::endl << "[R]Red:";
		std::cin >> r;
	}

	std::cout << "[G]Green: ";
	std::cin >> g;
	while (g > 255 || g < 0) {
		std::cout << "(!) Please enter valid number in range [0-255]" << std::endl << "[G] Green:";
		std::cin >> g;
	}

	std::cout << "[B]Blue: ";
	std::cin >> b;
	while (b > 255 || b < 0) {
		std::cout << "(!) Please enter valid number in range [0-255]" << std::endl << "[B] Blue:";
		std::cin >> b;
	}

	std::cout << "[A]Alpha: ";
	std::cin >> a;
	while (a > 255 || a < 0) {
		std::cout << "(!) Please enter valid number in range [0-255]" << std::endl << "[A] Alpha:";
		std::cin >> a;
	}

	std::cout << "Please enter number of decimal places of float values: ";
	std::cin >> dec;

	fr = (float)r / 255;
	fg = (float)g / 255;
	fb = (float)b / 255;
	fa = (float)a / 255;

	std::cout << std::endl;

	std::cout << "Converted values RGBA -> Float:" << std::endl;
	std::cout << std::fixed;
	std::cout << std::setprecision(dec);
	std::cout << "[R]Red: " << fr << "f" << std::endl;
	std::cout << "[G]Green: " << fg << "f" << std::endl;
	std::cout << "[B]Blue: " << fb << "f" << std::endl;
	std::cout << "[A]Alpha: " << fa << "f" << std::endl;

	std::cout << "\n[RGBA]: " << fr << "f, " << fg << "f, " << fb << "f, " << fa << "f" << std::endl;

	return 0;
}
