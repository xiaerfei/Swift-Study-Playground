//: Playground - noun: a place where people can play

import UIKit

var string:String = "123"
func canThrowAnError() throws {
    
}

do {
    try canThrowAnError()
} catch {
    
}

let age = -1
//断言
//assert(age > 0, "age > 0")
/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
//基本运算符
//加法运算符可用于字符串拼接
let string2:String = "456"

let lastString = string + string2

//浮点数求余计算
var num = 8 % 2.5

//"=="运算符
let word = "hello"
let name = "hello"

if word == name {
    print(name)
}

//空合运算符
let defaultColorName = "red"
var userColorName:String?

var currentColorName = userColorName ?? defaultColorName


//区间运算符
//闭区间运算符 闭区间运算符（a...b）定义一个包含从a到b(包括a和b)的所有值的区间，b必须大于等于a
for index in 1...5 {
    print("index = \(index)")
}

//半开区间运算符 半开区间（a..<b）定义一个从a到b但不包括b的区间
for index in 1..<5 {
    print("index = \(index)")
}









