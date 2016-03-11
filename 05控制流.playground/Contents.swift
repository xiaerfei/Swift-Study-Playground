//: Playground - noun: a place where people can play

import UIKit

//For 循环 
//for-in循环对一个集合里面的每个元素执行一系列语句。
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
//for 循环，用来重复执行一系列语句直到达成特定条件达成，一般通过在每次循环完成后增加计数器的值来实现。
for var index = 0; index < 3; ++index {
    print("index is \(index)")
}

//While 循环
//while循环，每次在循环开始时计算条件是否符合；
var index = 3
while index > 0 {
    index--
    print(index)
}

//repeat-while循环，每次在循环结束时计算条件是否符合。
index = 3
repeat {
    index--
    print(index)
} while index > 0
print("-------条件语句-----------")
//条件语句
//if

//Switch
index = 3
switch index {
case 0:
    print("0")
case 1,2,3:
    print("1,2,3")
    fallthrough
default:
    print("fallthrough")
    break;
}

//如果想要贯穿至特定的 case 分支中，请使用fallthrough语句


//区间匹配
print("--->区间匹配")
let expValue = 56

switch expValue {
case 0..<10:
    print("0---9")
case 10..<100:
    print("10---100")
default:
    break;
}

//元组
print("--->元组")

let somePoint = (1,1)

switch somePoint {
case (0,0):
    print("(0,0)")
case (_,0):
    print("(_,0)")
case (0,_):
    print("(0,_)")
case (-2...2,-2...2):
    print("(-2...2,-2...2)")
    
default:
    break
}

//值绑定
//Where case 分支的模式可以使用where语句来判断额外的条件

print("--->值绑定")

let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0) where x == 0:
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}

//guard 提前退出
print("--->提前退出")
func geet(person:[String:String]){
    guard let name = person["name"] else {
        return
    }
    print("hello \(name)")
}

geet(["name":"小明"])

if #available(iOS 9, OSX 10.10, *) {
    // 在 iOS 使用 iOS 9 的 API, 在 OS X 使用 OS X v10.10 的 API
    print("在 iOS 使用 iOS 9 的 API, 在 OS X 使用 OS X v10.10 的 API")
} else {
    // 使用先前版本的 iOS 和 OS X 的 API
    print("使用先前版本的 iOS 和 OS X 的 API")
}














