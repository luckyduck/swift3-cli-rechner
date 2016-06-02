//
//  main.swift
//  Swift3Rechner
//
//  Created by Jan Brinkmann on 02/06/16.
//  Copyright © 2016 Jan Brinkmann. All rights reserved.
//

import Foundation

/*
 Hilfe über h
:>  
 
Modus addieren gewählt...

 zahl1? 2
 zahl2? 4
 
 ergebnis: 6
 */

let iohelper = IOHelper()
let math = Math()

while true {
    let userInput = iohelper.newInput()
    guard let method = userInput else {
        continue
    }
    
    // was soll ich tun?
    var mathFunction: (Int, Int) -> Int

    switch method {
    case "h":
        print(iohelper.usageInfo())
        continue
    case "a":
        mathFunction = math.addieren
    case "s":
        mathFunction = math.subtrahieren
    case "m":
        mathFunction = math.multiplizieren
    default:
        print("Methode unbekannt\n")
        continue
    }
    
    // rechnen!
    let input1 = iohelper.ask(theQuestion: "Operand1: ")
    let input2 = iohelper.ask(theQuestion: "Operand2: ")

    // zahl1 umwandeln
    guard let str1 = input1 else {
        continue
    }
    guard let operand1 = Int(str1) else {
        continue
    }
    
    // zahl1 umwandeln
    guard let str2 = input2 else {
        continue
    }
    guard let operand2 = Int(str2) else {
        continue
    }
    
    var result = mathFunction(operand1, operand2)

    print("Ergebnis: \(result)", terminator: "\n\n")
}





/*
var i = 0
i++
*/

/*
for var x = 0; x < 10; x += 1 {
    
}
*/