//: Playground - noun: a place where people can play

import UIKit

func sayHello(pesonName:String)->String {
    return "hello, " + pesonName + " !"
}

sayHello("erger")

//函数参数名称
//函数参数都有一个外部参数名（external parameter name）和一个局部参数名（local parameter name）。
//外部参数名用于在函数调用时标注传递给函数的参数，局部参数名在函数的实现内部使用。

//一般情况下，第一个参数省略其外部参数名，第二个以及随后的参数使用其局部参数名作为外部参数名。
//所有参数必须有独一无二的局部参数名。尽管多个参数可以有相同的外部参数名，但不同的外部参数名能让你的代码更有可读性。

func someFunction(firstParameterName: Int, secondParameterName: Int) {
    // function body goes here
    // firstParameterName and secondParameterName refer to
    // the argument values for the first and second parameters
}

someFunction(0, secondParameterName: 1)


//指定外部参数名

func saySomeOneHello(to person: String, and anotherPerson: String) ->String {
    
    return "hello " + person + " and " + anotherPerson
}

saySomeOneHello(to: "pitter", and: "tom")

//忽略外部参数名
//如果你不想为第二个及后续的参数设置外部参数名，用一个下划线（_）代替一个明确的参数名

func callSomeOne(firstName : String, _ secondName : String) {
    print("firstName = \(firstName)  secondName = \(secondName)")
}

callSomeOne("pitter","tom")


//默认参数值

func someFunction(parameterWithDefault : Int = 16) {
    print(parameterWithDefault)
}

someFunction()

someFunction(15)

//可变参数
func arithmeticMean(numbers:Double...) {
    var total :Double = 0
    for num in numbers {
        total += num
    }
    print(total)
}

arithmeticMean(3.1,3.2,5.6)

//常量参数和变量参数
func alignRight(var string: String, totalLength: Int, pad: Character) -> String {
    let amountToPad = totalLength - string.characters.count
    if amountToPad < 1 {
        return string
    }
    
    let padString = String(pad)
    
    for _ in 1...totalLength {
        string = padString + string
    }
    
    return string;
}


alignRight("hello", totalLength: 10, pad: "-")

//输入输出参数
//变量参数，正如上面所述，仅仅能在函数体内被更改。如果你想要一个函数可以修改参数的值，
//并且想要在这些修改在函数调用结束后仍然存在，那么就应该把这个参数定义为输入输出参数

func swapTwoInts(inout a : Int, inout b : Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var a = 5, b = 6

swap(&a, &b)
a
b

//使用函数类型
func addTwoInts(a: Int, _ b: Int) -> Int {
    return a + b
}

var mathFunction : (Int,Int) ->Int = addTwoInts

mathFunction(a,b)

//函数类型作为参数类型

func printMathResult(mathFunction:(Int,Int)->Int,a:Int,b:Int) {
    print("Result: \(mathFunction(a, b))")
}

printMathResult(mathFunction, a: a, b: b)

//函数类型作为返回类型
func stepForward(input: Int) -> Int {
    return input + 1
}
func stepBackward(input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backwards : Bool) -> (Int)->Int {
    return backwards ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(currentValue > 0)

while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}


















