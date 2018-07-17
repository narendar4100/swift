import Foundation 

func greet(){
    print("greetings..")
    
}

greet()
func greet(message: String){
    print("\(message)")
}

greet(message:"good afternoon")

func add(n1:Int, n2:Int){
    print("\(n1)+\(n2)= \(n1+n2)")
}
add(n1:20,n2:3)

func add(_ n1:Int, _ n2:Int) ->Int{
    return(n1+n2)
}
var sum = add(2, 3)
print("sum = \(sum)")

func swap(j:Int, k: Int) -> (Int, Int){
    // function arguments are let constant by default
    // var tem = j
    // j= k
    // k= temp
    return(k,j)
}
var (a,b) = swap(j:2,k:4)
print("a= \(a) b=\(b)")

func swap(j: inout Int, k: inout Int){
    var temp = j
    j = k
    k = temp
}
(a,b) = swap(j: 12 , k:14)
print("a = \(a) b= \(b)")

var n1 = 10 , n2 = 20
swap (&n1, &n2)
print("n1 = \(n1) n2 = \(n2)")

func SI(amount : Double , years : Double=2.5, rate: Double=2.3)-> Double{
    return((amount*years*rate)/100)
}
print("deposit 1: \(SI(amount:1000.23, years :2, rate :5.2))")

print("deposit 2: \(SI(amount: 1000.56, years:3))")

print("deposit 3: \(SI(amount: 2000))")

// variadic arguments
func wishes(wishList: String...){
    for eachWish in wishList{
        print("\(eachWish)")
    }
}

wishes(wishList: "Happy Birthday","wymmhrotd", "party", "patandara")

wishes(wishList : " lkdmdf"," dkljfl;k", "dkfjas;l")

func addArray(arrays: [Int]...) -> [Int]{
    var a = arrays.count
    print( " a = \(a)")

    var array1 = arrays[0]
    var array2 = arrays[1]

    var sumArray = [Int] ()

    if array1.count == array2.count{
        for itr in 0..<array1.count{
            sumArray.append(array1[itr] + 
            array2[itr]) 
        }
    }

    return sumArray
}
var ar1 = [1,2,3,4,5]
var ar2 = [4,5,6,7,7]
var result = addArray(arrays: ar1, ar2)
print("result : \(result)")

func mul(_ n1:Int, _ n2:Int) ->Int{
    return(n1*n2)
}


// func as a type
var someOper: (Int, Int) -> Int = mul 
print(" multiplication : \(someOper(2,5))")

someOper = add 
print("addition : \(someOper(2,5))")

//  someOper = sub

// function as a parameter
func mathOper(someFunc : (Int, Int) -> Int, n1: Int, n2:Int){
    print("math operation : \(someFunc(n1,n2))")

}

mathOper(someFunc : mul, n1 : 2 , n2 : 3)
mathOper(someFunc : add, n1:3 , n2:4)

func increase(_ input :Int) -> Int{
return(input + 1)
}

func decrease(_ input:Int) -> Int{
return(input - 1)
}
func counting(flag: Bool)-> (Int) -> Int {
    return flag ? increase : decrease
}

 var countFunc = counting(flag: true)
 print("\(countFunc(3))")

 countFunc = counting(flag : false)
 print ("\(countFunc(3))")