module strings

name := 'Bob'
println(name.len)

// indexing gives a byte B
println(name[0])

// slicing gives a string 'ob'
println(name[1..3])

// escape special characters like in C
windows_newline := '\r\n'

// testing syntax, stay tuned!
assert windows_newline.len == 2
