/*
 * Demo code for converting RGBA to Float color values.
 *
 * CC0 1.0 Universal (CC0 1.0) Public Domain Dedication
 * https://creativecommons.org/publicdomain/zero/1.0/
 */

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
