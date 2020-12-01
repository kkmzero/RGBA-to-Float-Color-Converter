-- [[
-- Demo code for converting RGBA to Float color values.
--
-- CC0 1.0 Universal (CC0 1.0) Public Domain Dedication
-- https://creativecommons.org/publicdomain/zero/1.0/
-- ]]

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
