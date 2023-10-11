//
//  main.swift
//  HomeWorkError
//
//  Created by Карен Узунян on 09.10.2023.
//

import Foundation

//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
//2. Описать пару его наследников TrunkCar и SportCar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет TrunkCar, а какие – SportCar. Добавить эти действия в перечисление.
//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.

enum StartEngine {
case start, stop
}
class Car {
    var model: String
    var yearOfStart: Int
    var bag: Int
    
    init(model: String, yearOfStart: Int, bag: Int) {
        self.model = model
        self.yearOfStart = yearOfStart
        self.bag = bag
    }
        
        func startEngine(action: StartEngine){
            switch action {
            case .start:
                print("start")
            case .stop:
                print("stop")
            }
        }
    }


class SportCar: Car {
    var spoler: String = "" //специфичные для него свойства
    
    override func startEngine(action: StartEngine) {
        switch action {
        case .start:
            print("start")
            if spoler != "" {
                print("i will be faster, becase i have a \(spoler)")
            }
        case .stop:
            print("stop")
            if spoler != "" {
                print("i will stop faster, becase i have a \(spoler)")
            }
        }
    }
}
class TrunkCar: Car {
    var konteyner: Int = 0  //специфичные для него свойства
    
    override func startEngine(action: StartEngine) {
        switch action {
        case .start:
            print("start")
            if konteyner != 0 {
                print("i will drive slower becase i have konteyner = \(konteyner)")
            }
        case .stop:
            print("stop")
            if konteyner != 0 {
                print("i will stop slower becase i have konteyner = \(konteyner)")
            }
        }
    }
}

let bmw = SportCar(model: "8-ka", yearOfStart: 2018, bag: 300)
bmw.spoler = "spoler"
print(bmw.spoler)
bmw.startEngine(action: .start)
bmw.startEngine(action: .stop)

let landRover = SportCar(model: "Freelander", yearOfStart: 2016, bag: 500)

var bexa = bmw
print(bexa.model)
bexa.startEngine(action: .start)

var man = TrunkCar(model: "Man", yearOfStart: 2005, bag: 3000)
man.konteyner = 1
print("i can take in bag \(man.bag) kg")
print(man.konteyner)
man.startEngine(action: .start)
man.startEngine(action: .stop)

//вроде всё сделал, если есть что дополнить буду рад, спасибо!
//не стал много свойств писать и методов

