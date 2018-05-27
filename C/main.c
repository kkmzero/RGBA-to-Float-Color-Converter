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

#include <stdio.h>

int main()
{
	int r, g, b, a, dec;
	float fr, fg, fb, fa;

	printf("RGBA to Float Color Converter\n\n");
	printf("Please enter RGBA values in range [0-255]\n");

	printf("[R]Red: ");
	scanf("%d", &r);
	while (r > 255 || r < 0) {
		printf("(!) Please enter valid number in range [0-255]\n");
		printf("[R]Red: ");
		scanf("%d", &r);
	}

	printf("[G]Green: ");
	scanf("%d", &g);
	while (g > 255 || g < 0) {
		printf("(!) Please enter valid number in range [0-255]\n");
		printf("[G]Green: ");
		scanf("%d", &g);
	}

	printf("[B]Blue: ");
	scanf("%d", &b);
	while (b > 255 || b < 0) {
		printf("(!) Please enter valid number in range [0-255]\n");
		printf("[B]Blue: ");
		scanf("%d", &b);
	}

	printf("[A]Alpha: ");
	scanf("%d", &a);
	while (a > 255 || a < 0) {
		printf("(!) Please enter valid number in range [0-255]\n");
		printf("[A]Alpha: ");
		scanf("%d", &a);
	}

	printf("Please enter number of decimal places of float values: ");
	scanf("%d", &dec);

	fr = (float)r / 255;
	fg = (float)g / 255;
	fb = (float)b / 255;
	fa = (float)a / 255;

	printf("\nConverted values RGBA -> Float:\n");
	printf("[R]Red: ");
	printf("%.*lff\n", dec, fr);
	printf("[G]Green: ");
	printf("%.*lff\n", dec, fg);
	printf("[B]Blue: ");
	printf("%.*lff\n", dec, fb);
	printf("[A]Alpha: ");
	printf("%.*lff\n", dec, fa);

	printf("\n[RGBA]: ");
	printf("%.*lff, ", dec, fr);
	printf("%.*lff, ", dec, fg);
	printf("%.*lff, ", dec, fb);
	printf("%.*lff\n", dec, fa);

	return 0;
}
