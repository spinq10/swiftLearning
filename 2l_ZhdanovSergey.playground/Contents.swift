import Foundation
//Первое задание
func firstSolve (value: Int) {
    let y1 = value
    let y2 = y1%2
    if y2 == 0 {
        print("Число \(value) четное")
    } else {
        print("Число \(value) не четное")
        }
    }

firstSolve(value: 56)
//Второе задание
func secondSolve (value: Int) {
    let x1 = value
    let x2 = x1%3
    if x2 == 0 {
    print("Число \(value) делится на 3 без остатка")
    } else {
        print("Число \(value) не делится на 3 без остатка")
    }
}

secondSolve(value: 99)
//Третье задание
var testArray: [Int] = []
for i in 1...100 {
    testArray.append(i)
}

print(testArray)
//Четвертое задание
for element in testArray where (element%2 == 0) || (element%3 != 0) {
    testArray.remove(at : (testArray.firstIndex(of: element)!))
}
print(testArray)

//Все, что ниже я нагуглил, но вот прям до конца так и не понял как получается это число.
//С массивом и наполнением его этими числами вроде все ясно, но на разборе домашки все равно буду слушать эти моменты с особым интересом

//func fibonacci (n: Int) -> (Decimal) {
//    if (n<3) {
//        return 1
//    } else {
//        var z1 : Decimal = 1, z2 : Decimal = 1, z:Decimal
//        for _ in 3...n {
//            z = z1+z2
//            z1 = z2
//            z2 = z
//        }
//        return z2
//    }
//}
//
//fibonacci(n: 6)
//
//var fibArray = [Decimal]()
//fibArray.append(0)
//var n  = 100
//for i in 1...n {
//    fibArray.append(fibonacci(n: i))
//}
//print(fibArray)
