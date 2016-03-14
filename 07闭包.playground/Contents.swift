//: Playground - noun: a place where people can play

import UIKit

//闭包表达式语法
/*
{ (parameters) -> returnType in
    statements
}

*/

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

var reversed = names.sort({(s1:String,s2:String) -> Bool in
    return s1 > s2
})


//根据上下文推断类型
reversed = names.sort({s1,s2 in return s1 < s2})
reversed

//单表达式闭包隐式返回
//单行表达式闭包可以通过省略return关键字来隐式返回单行表达式的结果
reversed = names.sort({s1,s2 in s1 > s2})
reversed

//参数名称缩写
//Swift 自动为内联闭包提供了参数名称缩写功能，您可以直接通过$0，$1，$2来顺序调用闭包的参数，以此类推。
reversed = names.sort({$0 < $1})
reversed

//运算符函数
//Swift 可以自动推断出您想使用大于号的字符串函数实现
reversed = names.sort(>)

//尾随闭包
//如果您需要将一个很长的闭包表达式作为最后一个参数传递给函数，可以使用尾随闭包来增强函数的可读性。
//尾随闭包是一个书写在函数括号之后的闭包表达式，函数支持将其作为最后一个参数调用：
reversed = names.sort() {$0 < $1}

let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510,1126]

let strings = numbers.map { (var number) -> String in
    var output = ""
    while number > 0 {
        output = digitNames[number % 10]! + output
        number /= 10
    }
    return output
}

//捕获值







