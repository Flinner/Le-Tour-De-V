/*
String Interpolation
*/
x := 123.4567
println('x = ${x:4.2f}')
// => x = 123.46

// pad with spaces on the left => [   123.457]
println('[${x:10}]')

// pad with spaces on the right => [123       ]
println('[${int(x):-10}]')

// pad with zeros on the left => [0000000123]
println('[${int(x):010}]')

/*
String operators
*/

name := 'Bob'

// + is used to concatenate strings
bobby := name + 'by'
println(bobby)
//=> "Bobby"

mut s := 'hello '
// `+=` is used to append to a string
s += 'world'
println(s)
//=> "hello world"
