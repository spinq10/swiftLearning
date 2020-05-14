import UIKit

var str = "Hello, playground"

func quadSolve(a: Double,b: Double,c: Double) {
    let y = b*b - 4*a*c
    if y < 0 {
        print("Уравнение не имеет корней")
    } else if y == 0 {
        let x = -b/(2*a)
        print ("Уравнение имеет один корень: \(x)")
    } else {
        let x1 = (b+sqrt(y))/(2*a)
        let x2 = (b-sqrt(y))/(2*a)
        print("Уравнение имеет два корня: \(x1) и \(x2)")
    }
}

quadSolve(a: 13, b: 72, c: 1)

print ("\n")

func triangleSolve(a: Double,b: Double) {
    let aa = sqrt(a*a + b*a)
    let bb = a+b+aa
    let cc = (a*b)/2

    print("Гипотенуза равняется: \(aa)")
    print("Периметр равняется: \(bb)")
    print("Площадь равняется: \(cc)")
}

triangleSolve(a: 7, b: 28)

print ("\n")

func moneySolve (startSumm: Double, procent: Double) {
    var startSum = startSumm
    for _ in 1...5 {
        startSum += (startSum/100) * procent
    }
    print("Сумма вклада через 5 лет будет равна: \(startSum)")
}

moneySolve(startSumm: 1000000, procent: 4)

