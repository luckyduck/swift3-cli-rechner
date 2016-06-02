//
//  IOHelper.swift
//  Swift3Rechner
//
//  Created by Jan Brinkmann on 02/06/16.
//  Copyright © 2016 Jan Brinkmann. All rights reserved.
//

import Foundation

struct IOHelper {
    func newInput() -> String? {
        print("Willkommen! Gib 'h' für Infos zur Nutzung ein")
        
        let input = ask(theQuestion: ":> ")
        return input
    }
    
    func ask(theQuestion: String) -> String? {
        print("\(theQuestion)", terminator: "")
        
        return getInput()
    }
    
    func getInput() -> String? {
        let input = readLine(strippingNewline: true)
        return input
    }
    
    func usageInfo() -> String {
        return
            "Bitte wählen:\n"
            + "h: diese Hilfe anzeigen\n"
            + "a: addieren\n"
            + "s: subtrahieren\n"
            + "m: multiplizieren\n"
    }
}