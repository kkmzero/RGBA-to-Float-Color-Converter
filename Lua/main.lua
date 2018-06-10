--[[Copyright (c) 2018, Ivan Kmeťo
--  All rights reserved.
--  
--  Redistribution and use in source and binary forms, with or without
--  modification, are permitted provided that the following conditions are met:
--  
--  * Redistributions of source code must retain the above copyright notice, this
--    list of conditions and the following disclaimer.
--  
--  * Redistributions in binary form must reproduce the above copyright notice,
--    this list of conditions and the following disclaimer in the documentation
--    and/or other materials provided with the distribution.
--  
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
--  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
--  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
--  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
--  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
--  DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
--  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
--  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
--  OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
--  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--]]

print("RGBA to Float Color Converter\n")
print("Please enter RGBA values in range [0-255]")

print("[R]Red: ")
r = io.read("*number")
while (r > 255) or (r < 0) do
  print("(!) Please enter valid number in range [0-255]")
  print("[R]Red: ")
  r = io.read("*number")
end

print("[G]Green: ")
g = io.read("*number")
while (g > 255) or (g < 0) do
  print("(!) Please enter valid number in range [0-255]")
  print("[G]Green: ")
  g = io.read("*number")
end

print("[B]Blue: ")
b = io.read("*number")
while (b > 255) or (b < 0) do
  print("(!) Please enter valid number in range [0-255]")
  print("[B]Blue: ")
  b = io.read("*number")
end

print("[A]Alpha: ")
a = io.read("*number")
while (a > 255) or (a < 0) do
  print("(!) Please enter valid number in range [0-255]")
  print("[A]Alpha: ")
  a = io.read("*number")
end

print("Please enter number of decimal places of float values: ")
dec = io.read("*number")

fr = string.format("%." .. dec .. "f",(r / 255))
fg = string.format("%." .. dec .. "f",(g / 255))
fb = string.format("%." .. dec .. "f",(b / 255))
fa = string.format("%." .. dec .. "f",(a / 255))

print("Converted values RGBA -> Float:")
print("[R]Red: " .. fr .. "f")
print("[G]Green: " .. fg .. "f")
print("[B]Blue: " .. fb .. "f")
print("[A]Alpha: " .. fa .. "f")

print("\n[RGBA]: " .. fr .. "f, " .. fg .. "f, " .. fb .. "f, " .. fa .. "f")
