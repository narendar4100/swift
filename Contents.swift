//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var coordinates = (40,20)

switch coordinates{
case (0,0):
    print("start of canvas")
case(100,100):
    print("end of cancas")
case(10,20):
    print("center of canvas")
case(10,_):
    print("x axis")
case(_,20):
    print(" y axis")
case(101...200,201...300):
    print("outside the canvas")
default:
    print("canvas unavailable")
}

var range = 1...100
print(range)
print(range.contains(45))
print(range.contains(1000))
print("lower bound",range.lowerBound)
print("upper bound", range.upperBound)

for itr in 0...5{
    print("itr:\(itr)")
}
var friends = ["simran","anu", "Aman"]

var length = friends.count

for itr in 0..<length{
    print ("friends:\(itr)")
}
for frnd in friends[1...]{
    print("===\(frnd)")
}
for frnd in friends[2...]{
    print("@@@\(frnd)")
}
