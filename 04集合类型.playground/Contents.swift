//: Playground - noun: a place where people can play

import UIKit

//创建一个空数组
var someInts = [Int]()
someInts.append(2)
someInts.appendContentsOf([3,4])

//创建一个带有默认值的数组
var twoDoubles   = [Double](count: 2, repeatedValue: 3)
var threeDoubles = [Double](count: 3, repeatedValue: 0)
//通过两个数组相加创建一个数组
var allDoubles = twoDoubles + threeDoubles

//用字面量构造数组

var shoppingList: [String] = ["Egg","Milk"]

var shopingListOther = ["Egg","Milk"]
//访问和修改数组

shoppingList.append("chilk")

shoppingList += ["banana"]

shoppingList.insert("apple", atIndex: 0)

shoppingList.removeAtIndex(0)
//如果我们同时需要每个数据项的值和索引值，可以使用enumerate()方法来进行数组遍历

for (index,value) in shoppingList.enumerate() {
    print("index = \(index) value = \(value)")
}


//集合
//创建和构造一个空的集合

var letters = Set<Character>()
letters.insert("a")

//用数组字面量创建集合

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]

var favoriteGenresOther: Set    = ["Rock", "Classical", "Hip hop"]


//访问和修改一个集合

favoriteGenres.insert("Hi haha")

//favoriteGenres.remove("Rock")

favoriteGenres.contains("Hi haha")

//遍历一个集合
for gener in favoriteGenres {
    print("\(gener)")
}

//返回一个有序集合

for gener in favoriteGenres.sort() {
    print("\(gener)")
}

//字典
//创建一个空字典
var numberOfIntegers = [Int:String]()






















