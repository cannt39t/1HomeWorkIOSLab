import UIKit

// Задание 2.
// Реализовать ООП модель Национальной библиотеки Республики Татарстан.
//
// Требования:
//
// 1 Минимум 5 классов, 3 структуры, 2 протокола, 2 enum.
// 2 Из части классов должна выстраиваться иерархия наследования с переопределением методов.
// 3 Необходимо использовать разные модификаторы доступа.

public protocol Human{
    var name: String { get set }
    var id: Int { get }
}

open class Reader: Human{
    public var name: String
    public var id: Int
    
    init(n: String, i: Int){
        name = n
        id = i
    }
}


open class Employee : Human{
    public var name: String
    public var id: Int
    
    init(n: String, i: Int){
        name = n
        id = i
    }
}

public class Storage{
    public var books = [Book?]()
    
    init(){
        loadbooks()
    }
    
    private func loadbooks(){
        print("Loading the books")
        books = [nil]
    }
    
}



class Staff{
    var staff = [Employee?]()
    
    init(){
        loadstaff()
    }
    
    private func loadstaff(){
        print("Loading the staff")
        staff = [nil]
    }
    
}



public class BookTakedBy{
    public var map: [Int: Int]?
    
    init(){
        loadmap()
    }
    
    private func loadmap(){
        print("Map is here")
        map = nil
    }
    
}




public protocol Book{
    
}

public struct AudioBook{
    
}


public struct UsualBook{
    
}


public struct AuthorOfBook: Human {
    public var name: String
    public var id: Int
    
    init(n: String, i: Int){
        name = n
        id = i
    }
}
