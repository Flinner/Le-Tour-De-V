
// myfile.v
module mymodule

// To export a function we have to use `pub`
pub fn say_hi() {
	println('hello from mymodule!')
}

///=============================================///

// another_file.v
import mymodule

fn main() {
	mymodule.say_hi()
}
