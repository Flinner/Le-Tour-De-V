<!-- # Welcome to a tour of V -->

<!-- ## Using the tour -->

<!-- Welcome to a tour of the V programming language. The tour covers the -->
<!-- most important features of the language, mainly: -->

<!-- ## <a href="/welcome/1">Welcome!</a> -->
<!-- Learn how to use this tour: including how to navigate the different -->
<!-- lessons and how to run code. -->

<!-- ## <a href="/basics/1" > Basics</a> -->

<!-- The starting point, learn all the basics of the language. -->

<!-- Declaring variables, calling functions, and all the things you need to -->
<!-- know before moving to the next lessons. -->


<!-- 1. <a href="/basics/1"> Packages, variables, and functions.</a> -->
<!-- Learn the basic components of any V program. -->

<!-- 2. <a href="/basics/2"> Flow control statements: for, if, else, switch and defer</a> -->
<!-- Learn how to control the flow of your code with conditionals, loops, -->
<!-- switches and defers. -->

<!-- 3. <a href="/basics/3"> More types: structs, slices, and maps.</a> -->
<!-- Learn how to define types based on existing ones: this lesson covers -->
<!-- structs, arrays, slices, and maps. -->

<!-- ## <a href="#"> Methods and interfaces</a> -->

<!-- Learn how to define methods on types, how to declare interfaces, and -->
<!-- how to put everything together. -->

<!-- 1. <a href="#"> Methods and interfaces</a> -->
<!-- This lesson covers methods and interfaces, the -->
<!-- constructs that define objects and their behavior. -->

<!-- 2. <a href="#"> Concurrency</a> -->

<!-- V provides concurrency features as part of the core language. -->

<!-- This module goes over goroutines and channels, and how they are used -->
<!-- to implement different concurrency patterns. -->

<!-- 3. <a href="#"> Concurrency </a> -->
<!-- V provides concurrency constructions as part of the core -->
<!-- language. This lesson presents them and gives some examples on how -->
<!-- they can be used. -->





# TABLE OF CONTENTS(TMP FOR ORGANIZING)
* [Welcome](/welcome/1)
	* [Greetings!](/welcome/1)
	* [Locals](/welcome/2)
	* [Offline](/welcome/3)
	* [Playground](/welcome/4)
	* [End](/welcome/5)
* [Basics](/basics/1)
	* [Hello world](/basics/1)
	* [Comments](/basics/2)
	* [Functions](/basics/3)
		* [Returning multiple values](/basics/3)
	* [Variables](/basics/4)
	* [V types](/basics/5)
		* [Strings](/basics/6)
		* [Moar Strings!](/basics/7)
		* [Numbers](/basics/8)
		* [Arrays](/basics/9)
			* [Arrays Basics](/basics/9)
			* [Array Initilization](/basics/10)
			* [Array Types](/basics/11)
		* [Maps](#maps)
	* [Statements & expressions](#statements--expressions)
		* [If](#if)
		* [In operator](#in-operator)
		* [For loop](#for-loop)
		* [Match](#match)
		* [Defer](#defer)
	* [Structs](#structs)
		* [Embedded structs](#embedded-structs)
		* [Default field values](#default-field-values)
		* [Short struct literal syntax](#short-struct-literal-syntax)
		* [Access modifiers](#access-modifiers)
		* [Methods](#methods)
	* [Unions](#unions)
	* [Module imports](#module-imports)
		* [Running a project folder](#running-a-project-folder-with-several-files)
		* [Symbol visibility](#symbol-visibility)


* [Functions 2](#functions-2)
    * [Pure functions by default](#pure-functions-by-default)
    * [Mutable arguments](#mutable-arguments)
    * [Variable number of arguments](#variable-number-of-arguments)
    * [Anonymous & higher-order functions](#anonymous--higher-order-functions)
* [References](#references)
* [Constants](#constants)
* [Builtin functions](#builtin-functions)
* [Printing custom types](#printing-custom-types)
* [Modules](#modules)
    * [Manage Packages](#manage-packages)
	* [Publish package](#publish-package)
* [Type Declarations](#type-declarations)
    * [Interfaces](#interfaces)
    * [Enums](#enums)
    * [Sum types](#sum-types)
    * [Type aliases](#type-aliases)
    * [Option/Result types & error handling](#optionresult-types-and-error-handling)
* [Generics](#generics)
* [Concurrency](#concurrency)
    * [Spawning Concurrent Tasks](#spawning-concurrent-tasks)
    * [Channels](#channels)
    * [Shared Objects](#shared-objects)
* [Decoding JSON](#decoding-json)
* [Testing](#testing)
* [Memory management](#memory-management)
* [ORM](#orm)


* [Writing documentation](#writing-documentation)
* [Tools](#tools)
    * [v fmt](#v-fmt)
    * [Profiling](#profiling)
* [Advanced Topics](#advanced-topics)
    * [Dumping expressions at runtime](#dumping-expressions-at-runtime)
    * [Memory-unsafe code](#memory-unsafe-code)
    * [Structs with reference fields](#structs-with-reference-fields)
    * [sizeof and __offsetof](#sizeof-and-__offsetof)
    * [Calling C from V](#calling-c-from-v)
    * [Debugging](#debugging)
    * [Conditional compilation](#conditional-compilation)
    * [Compile time pseudo variables](#compile-time-pseudo-variables)
    * [Compile-time reflection](#compile-time-reflection)
    * [Limited operator overloading](#limited-operator-overloading)
    * [Inline assembly](#inline-assembly)
    * [Translating C to V](#translating-c-to-v)
    * [Hot code reloading](#hot-code-reloading)
    * [Cross compilation](#cross-compilation)
    * [Cross-platform shell scripts in V](#cross-platform-shell-scripts-in-v)
    * [Attributes](#attributes)
    * [Goto](#goto)
* [Appendices](#appendices)
    * [Keywords](#appendix-i-keywords)
    * [Operators](#appendix-ii-operators)
