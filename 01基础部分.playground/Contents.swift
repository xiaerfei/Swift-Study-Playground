//: Playground - noun: a place where people can play

import UIKit

/* 常量和变量 */
//声明常量和变量 类型标注
var welcomeMessage: String = "welcomeMessage"

var red,green,blue:Double

//声明常量和变量
let pi = 3.1415926

let friendlyWelcome = "hello world !"

print(welcomeMessage)
print(friendlyWelcome)

//整数
//整数范围

let minValue = UInt8.min
let maxValue = UInt8.max

//整数转换
let cannotBeNegative:UInt8 = 1
// Int8 类型不能存储超过最大值的数，所以会报错
//let tooBig:Int8 = Int8.max + 1

let twoThousand:UInt16 = 2_000
let one:UInt8          = 1
//常量twoThousand是UInt16类型，然而常量one是UInt8类型。它们不能直接相加，因为它们类型不同。所以要调用UInt16(one)来创建一个新的UInt16数字并用one的值来初始化，然后使用这个新数字来计算：
let twoThousandAndOne = twoThousand + UInt16(one)

let floatThree = 3.0

//类型别名
//AudioSample被定义为UInt16的一个别名
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
//元组

let http404Error = (404,"Not Found")
//通过下标来访问元组中的单个元素，下标从零开始：
http404Error.0
http404Error.1

//你可以将一个元组的内容分解（decompose）成单独的常量和变量
let (status, statusMessage) = http404Error
status
statusMessage

//你可以将一个元组的内容分解（decompose）成单独的常量和变量
let (justTheStatusCode, _) = http404Error

justTheStatusCode

//可以在定义元组的时候给单个元素命名：
let http200Status = (statusCode: 200, description: "OK")
//给元组中的元素命名后，你可以通过名字来获取这些元素的值：
http200Status.statusCode
http200Status.description

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
//可选类型
let possibleNumber = "123"

let convertedNumber = Int(possibleNumber)

print(convertedNumber)
//你可以给可选变量赋值为nil来表示它没有值：
var serverResponseCode:Int? = 404

serverResponseCode = nil

//如果你声明一个可选常量或者变量但是没有赋值，它们会自动被设置为nil：
var surveyAnswer:String?

//可选绑定
//使用可选绑定（optional binding）来判断可选类型是否包含值，如果包含就把值赋给一个临时常量或者变量。
if let constantName = surveyAnswer {
    print("is not nil")
} else {
    print("is nil")
}

//你可以包含多个可选绑定在if语句中，并使用where子句做布尔值判断
if let firstNumber = Int("4"), secondNumber = Int("45") where firstNumber < secondNumber {
    print("小于")
} else {
    print("大于")
}

//隐式解析可选类型
//问号（String?）改成感叹号（String!）来声明一个隐式解析可选类型

let possibleString: String? = "An optional string"

let forcedString: String = possibleString!// 需要惊叹号来获取值

let assumedString: String! = nil

//你仍然可以把隐式解析可选类型当做普通可选类型来判断它是否包含值：

print(forcedString)

if assumedString != nil {
    print(assumedString)
} else {
    assumedString
}


















