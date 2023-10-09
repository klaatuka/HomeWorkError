//
//  main.swift
//  HomeWorkError
//
//  Created by Карен Узунян on 09.10.2023.
//

import Foundation

//1. Написать функцию, которая определяет, четное число или нет.
func evenNumber(number: Int){
    if number % 2 == 0{
        print("Число \(number) четное")
    } else {
        print("Число \(number) не четное")
    }
}

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.
func divideThree(number: Int){
    if number % 3 == 0{
        print("Число \(number) делится на 3 без остатка")
    } else {
        print("Число \(number) делится с остатком")
    }
}

//3. Создать возрастающий массив из 100 чисел.

var array = [Int] (1...100)

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

var array2 = [Int()] //создаю новый пустой массив и потом в него добавлю нужные значения

for (index, value) in array.enumerated() {
    if value % 2 == 1{
        if value % 3 == 0{
            array2.append(value)
        }
        
    }
}
print(array2)


//5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.
//Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.
//6 Написать функцию которая находит факториал числа N
//7. Задача: Простой калькулятор.
//     Вводим два числа и операцию (сложение, вычитание, умножение, деление), после чего выводим
//     результат.
func calc(number1: Int, number2: Int, operation: String) -> Int {
    var result = 0
    switch operation{
    case "+":
       result = number1 + number2
    case "-":
        result = number1 - number2
    case "*":
       result = number1 * number2
    case "/":
        result = number1 / number2
    default:
        print("error")
    }
    return result
}
var res = calc(number1: 30, number2: 3, operation: "/")
print("Результат вычисления 2-х чисел равно \(res)")
//8. Напишите функцию которая определяет длинну строки.
var stroka = "Посчитай мою длину"
print("Длина строки равно \(stroka.count)")
// вопрос: как исключить пробелы из подсчета, такое возможно?

//9. Напишите функцию которая определит максимальное числа из трех.

func maxNumberValue (number1: Int, number2: Int, number3: Int) {
    if number1 > number2 && number1 > number3{
        print(number1)
    } else if number2 > number1 && number2 > number3{
        print(number2)
    } else {
        print(number3)
    }
}
maxNumberValue(number1: 2, number2: 4, number3: 1)
//10. Напишите функцию которая сделает реверс строки которую введет пользователь
func revers(stroka: String){
    var res = String(stroka.reversed())
    print("Реверс введённой строки равно \(res)")
}
revers(stroka: "Марина")
//11. Напишите функцию которая конвертирует время из секунд в часы, минуты и секунды.

//12. Напишите функцию которая подсчитает количество слов в строке.
let text = "Данный пример покажет вам как разделять текст по словам"
let words = text.split(separator: " ")
print(words)

//13. Напишите функцию которая выведит каждое слово строки на новой строке.
func printEveryWordInNewStrok(stroka: String){
    let words = stroka.split(separator: " ")
    
    for word in words {
        print(word)
    }
}
printEveryWordInNewStrok(stroka: "Каждое слово будет в новой строке")

//14. Напишите функцию которая выведит каждое слово через определенный интервал времени.
func everyWordInTime(stroka: String){
    let words = stroka.split(separator: " ")
    
    for word in words {
        print(word)
        Thread.sleep(forTimeInterval: 2)
    }
}
everyWordInTime(stroka: "Каждое слово через 1 секунду")
//15. Напишите функцию которая выведет количество слов в введенной строке
// такой же что и в 12? одинаковые вроде задачи
