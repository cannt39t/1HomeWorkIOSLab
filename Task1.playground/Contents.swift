import UIKit

protocol HomeworkService {
    // Функция деления с остатком, должна вернуть в первой части результат деления, во второй части остаток.
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int)

    // Функция должна вернуть числа фибоначчи.
    func fibonacci(n: Int) -> [Int]

    // Функция должна выполнить сортировку пузырьком.
    func sort(rawArray: [Int]) -> [Int]

    // Функция должна преобразовать массив строк в массив первых символов строки.
    func firstLetter(strings: [String]) -> [Character]

    // Функция должна отфильтровать массив по условию, которое приходит в параметре `condition`. (Нельзя юзать `filter` у `Array`)
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int]
}

struct HomeWorkImplementer: HomeworkService{
    
    func divideWithRemainder (_ x: Int, by y: Int) -> (Int, Int){
        return (x / y, x % y)
    }
    
    
    func fibonacci(n: Int) -> [Int]{
        var res: Array = [1, 1]
        var c = 0
        var i = res[c] + res[c+1]
        while(i <= n){
            res.append(i)
            c+=1
            i = res[c] + res[c+1]
        }
        return res
    }
    
    func sort(rawArray: [Int]) -> [Int] {
        var copy = rawArray
        for i in 0...copy.count-2{
            for j in i+1...copy.count-1{
                if copy[i] > copy[j]{
                    let t = copy[i]
                    copy[i] = copy[j]
                    copy[j] = t
                }
            }
        }
        return copy
    }
    
    func firstLetter(strings: [String]) -> [Character]{
        var res = [Character]()
        for i in strings{
            guard let un = i.first else{
                fatalError()
            }
            res.append(un)
        }
        return res
    }
    
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int]{
        var res = [Int]()
        for i in array{
            if(condition(i)){
                res.append(i)
            }
        }
        return res
    }
    
}

let str: HomeWorkImplementer = HomeWorkImplementer()
str.divideWithRemainder(10, by : 3)
str.fibonacci(n: 45)
var arr = [1,4,424,42,51,1,-3,0]
str.sort(rawArray: arr)
