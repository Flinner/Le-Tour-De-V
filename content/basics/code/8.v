/*
Binary, Hexadecimal, and Octal
*/
// Hexadecimal
a := 0x7B

// Binary
b := 0b01111011

// Octal
c := 0o173

/*
using _ separator
all these have type int
*/

// same as 0b11
three := 0b0_11

// same as 3122.55
float_num := 3_122.55

// same as 255
hexa := 0xF_F

// same as 0o173
oct := 0o17_3

/*
* Casting
*/

e := i64(123)
f := byte(42)
g := i16(12345)

// Assigning floating point numbers works the same way:
f1 := 1.0
f2 := f64(3.14)
f3 := f32(3.14)
