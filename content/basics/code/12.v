mut nums := [1, 2, 3]
nums << 4
println(nums) // "[1, 2, 3, 4]"

// append array
nums << [5, 6, 7]
println(nums) // "[1, 2, 3, 4, 5, 6, 7]"

mut names := ['John']
names << 'Peter'
names << 'Sam'

//  This will not compile. `names` is an array of strings.
names << 10

/*
* val in array
*/
println(names.len) // "3"
println('Alex' in names) // "false"

/*
* .filter
*/

anums := [1, 2, 3, 4, 5, 6]
even := anums.filter(it % 2 == 0)
println(even) // [2, 4, 6]

// filter can accept anonymous functions
even_fn := anums.filter(fn (x int) bool {
	return x % 2 == 0
})
println(even_fn)

/*
* .map
*/
words := ['hello', 'world']
upper := words.map(it.to_upper())
println(upper) // ['HELLO', 'WORLD']

// map can also accept anonymous functions
upper_fn := words.map(fn (w string) string {
	return w.to_upper()
})
println(upper_fn) // ['HELLO', 'WORLD']
