(*Copyright (c) 2018, Ivan Kmeťo
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
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*)

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
