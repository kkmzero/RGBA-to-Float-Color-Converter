(*
 * Demo code for converting RGBA to Float color values.
 *
 * CC0 1.0 Universal (CC0 1.0) Public Domain Dedication
 * https://creativecommons.org/publicdomain/zero/1.0/
 *)

program RGBA2FloatColorConv;
uses crt;

var r,g,b,a,dp : integer;
var fr,fg,fb,fa : real;

begin
  writeln('RGBA to Float Color Converter',#13#10);
  writeln('Please enter RGBA values in range [0-255]');

  writeln('[R]Red: ');
  readln(r);
  while (r > 255) or (r < 0) do
  begin
    writeln('(!) Please enter valid number in range [0-255]');
    writeln('[R]Red: ');
    readln(r);
  end;

  writeln('[G]Green: ');
  readln(g);
  while (g > 255) or (g < 0) do
  begin
    writeln('(!) Please enter valid number in range [0-255]');
    writeln('[G]Green: ');
    readln(g);
  end;

  writeln('[B]Blue: ');
  readln(b);
  while (b > 255) or (b < 0) do
  begin
    writeln('(!) Please enter valid number in range [0-255]');
    writeln('[B]Blue: ');
    readln(b);
  end;

  writeln('[A]Alpha: ');
  readln(a);
  while (a > 255) or (a < 0) do
  begin
    writeln('(!) Please enter valid number in range [0-255]');
    writeln('[A]Alpha: ');
    readln(a);
  end;

  writeln('Please enter number of decimal places of float values: ');
  readln(dp);

  fr := int(r)/255;
  fg := int(g)/255;
  fb := int(b)/255;
  fa := int(a)/255;

  writeln('Converted values RGBA -> Float:');
  writeln('[R]Red: ',fr:1:dp,'f');
  writeln('[G]Green: ',fg:1:dp,'f');
  writeln('[B]Blue: ',fb:1:dp,'f');
  writeln('[A]Alpha: ',fa:1:dp,'f',#13#10);

  writeln('[RGBA]: ',fr:1:dp,'f, ',fg:1:dp,'f, ',fb:1:dp,'f, ',fa:1:dp,'f');
end.
