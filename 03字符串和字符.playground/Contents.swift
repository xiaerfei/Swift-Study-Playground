//: Playground - noun: a place where people can play

import UIKit

//初始化空字符串
var emptyString   = ""      // 空字符串字面量
var anotherString = String()// 初始化方法

if emptyString.isEmpty {
    print("isEmpty")
}

//字符串可变性
var variableSring = "hello"
variableSring +=  " world "
//可以用append()方法将一个字符附加到一个字符串变量的尾部：
let exclamationMark:Character = "!"

variableSring.append(exclamationMark)

//字符串插值  插入的字符串字面量的每一项都在以反斜线为前缀的圆括号中：
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

let sparklingHeart = "\u{1F496}"

//计算字符数量
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.characters.count) characters")


//字符串索引 
//通过调用String.Index的predecessor()方法，可以立即得到前面一个索引，调用successor()方法可以立即得到后面一个索引。
variableSring[variableSring.startIndex.successor()]
//也可以调用advancedBy(_:)方法来获取
let index = variableSring.startIndex.advancedBy(6)
variableSring[index]

for index in variableSring.characters.indices {
    print( "\(variableSring[index])",terminator:" ")
}
//插入和删除 
variableSring.insert("?", atIndex: variableSring.endIndex)
variableSring.insertContentsOf(" I am here,where are you ".characters, at: variableSring.endIndex.predecessor())

let range = variableSring.endIndex.advancedBy(-6)..<variableSring.endIndex
variableSring.removeRange(range)













