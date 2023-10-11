//
//  main.swift
//  HomeWorkError
//
//  Created by Карен Узунян on 09.10.2023.
//

import Foundation

//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.

enum EngineStatus {
    case start
    case stop
}
struct SportCar {
    
    let marka: String
    let yearOfStart: Int
    let back: Int
    var isActiveEngine: Bool
    var isOpenWindow: Bool
    var isFullBack: Bool
    
    //проверка состояния окон и действие
    mutating func openWindow(){
        if isOpenWindow == true{
            isOpenWindow = false
            print("The window is close")
        } else {
            isOpenWindow = true
            print("The window was open")
        }
    }
    //запуск двигателя с проверкой
    mutating func startEngine(){
        if isActiveEngine == true{
            print("The engine is start")
        } else {
            isActiveEngine = true
            print("The engine started")
        }
    }
    // остановка двигателя с проверкой
    mutating func stopEngine(){
        if isActiveEngine == true{
            isActiveEngine = false
            print("The engine stopped")
        } else {
            isActiveEngine = false
            print("The engine is stop")
        }
    }
    //проверяю состояние заполненности багажника и если он пустой, то могу загрузить не больше условия максимального объема
    mutating func fullBack(massaKg: Int){
        if isFullBack == false && massaKg <= back {
            let newBack = massaKg
            print("The back is full equal \(newBack)")
            isFullBack = true
        } else {
            
            print("Cant't do this, max back equal \(back)")
        }
    }
    // Запуск или остановка двигателя используя перечисления
    mutating func switchEngine(action: EngineStatus) {
        switch action {
        case .start:
            print("zapusk")
            startEngine()
        case .stop:
            print("Stop")
            stopEngine()
        }
    }
    
}
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.
var bmw = SportCar(marka: "8-ka", yearOfStart: 2020, back: 600, isActiveEngine: false, isOpenWindow: true, isFullBack: false)
var landRover = SportCar(marka: "FreeLander", yearOfStart: 2016, back: 600, isActiveEngine: true, isOpenWindow: false, isFullBack: true)
print("Car's name: \(bmw.marka)")
print(bmw.back) //вывести в консоль вместительность багажника
bmw.startEngine() //запуск двигателя
bmw.stopEngine() //остановка двигателя
print(bmw.openWindow()) // закрыть/открыть окна
bmw.fullBack(massaKg: 500) // проверить если багажник пустой и наш объект по массе вхож в багажник, то его положить в багажник, статус                                напечатать в консоль
bmw.switchEngine(action: .start) //запуск двигателя через перечисления
bmw.switchEngine(action: .stop) //остановка двигателя через перечисления
print(landRover.isFullBack)
landRover.fullBack(massaKg: 100)
landRover.switchEngine(action: .stop)
print(landRover.isOpenWindow)
landRover.openWindow()
print(landRover.isOpenWindow)

//--Mark: Вторую структуры TrunkCar не создавал, смысл всё это копировать не увидел, задачу понял вроде хорошо, спасибо за проверку!
