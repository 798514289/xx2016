//: Playground - noun: a place where people can play

import UIKit

//石头剪刀布 bo5
var arr = ["石头","剪刀","布"]
var a,b:Int
var rst:String
var aNum = 0
var bNum = 0
repeat{
    a = Int(arc4random_uniform(100)) % arr.count
    b = Int(arc4random_uniform(10)) % arr.count
    if b-a == 1 || a-b == 2 {
        aNum += 1
        rst = "a win"
    }else if a - b == 1 || b-a == 2{
        bNum += 1
        rst = "b win"
    }else{
        rst = "try again"
    }
    print("a:\(arr[a]),b:\(arr[b]),\(rst)")
    if bNum >= 3 {
        print("b win last")
    }
    if aNum >= 3{
        print("a win last")
    }
}while aNum < 3 && bNum < 3



