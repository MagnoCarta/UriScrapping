#!/usr/bin/swift

//
//  Daily Challenge.swift
//
//
//  Created by Leonardo Fernandes and Magno on 12/03/20.
//

// Importing the main module
import Foundation
// Importing a module that recive arguments in terminal
import ArgumentParser


// A extension of StringProtocol, addind a new func that return the first index of a complete String
extension StringProtocol {
    func index<S: StringProtocol>(of string: S, options: String.CompareOptions = []) -> Index? {
        range(of: string, options: options)?.lowerBound
    }
}

// Creating a variable that recive a random number in range that start in 1001 and and in 2999
var question = Int.random(in: 1001 ..< 3000)


// A struct that singns the ParsableCommand protocol.
struct ByIdOrRandom: ParsableCommand {
    static let configuration = CommandConfiguration(
    abstract: "Além dos comandos abaixo, também temos os seguintes:\n\nat: Ativar automaticamente receber questões\ndat: Desativa automaticamente receber questões\nswitch: Troca se está ativado para desativado e vice versa")
    @Option(default: question) var id: Int

    
    
    
    func run() {
        // Magno, isso me bugou, se a gente não passar nada ele não carrega ?
        question = id
        challengerFinder()
        
    }
    
}



/*
    The principal function of the code, that make a url request and gets the main parte of URI challanger
    and show in ther terminal screen
*/

func challengerFinder() {
    
    // Varaible of type URL that contains the url of URI repository
    let url = URL(string: "https://www.urionlinejudge.com.br/repository/UOJ_\(question).html")

    var newStr1: String
    var newStr2: String
    let offsetTimelimit = 29
    let offsetEnd = -34
    
    do {
        // Variable content that recive the HTML from URL
        let content = try String(contentsOf: url!, encoding: .utf8)

        // return a string with all the HTML without <[^>]+>
        let str = content.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
        var newStr: String

        if let index = str.index(of: "URI Online Judge"){
            newStr = String(str[index...])
            if let index1 = newStr.index(newStr.startIndex, offsetBy: 25, limitedBy: newStr.endIndex) {
                    newStr1 = String(newStr[index1...])
                if let newIndex = newStr1.index(of: "Exemplo de Entrada"){
                    newStr2 = String(newStr1[newIndex...])
                    newStr1 = String(newStr1[..<newIndex])
                    
                    if let auxIndex = newStr2.index(newStr2.startIndex, offsetBy: 65, limitedBy: newStr2.endIndex) {
                        newStr2 = String(newStr2[auxIndex...])
                    }
                    
                    if let auxIndex = newStr1.index(of: "Timelimit"){
                        let newStr3 = String(newStr1[..<auxIndex])
                        newStr1 = String(newStr1[auxIndex...])
                        if let auxNewIndex = newStr1.index(newStr1.startIndex, offsetBy: offsetTimelimit, limitedBy: newStr1.endIndex){
                            newStr1 = String(newStr1[auxNewIndex...])
                            if let auxNewIndex2 = newStr1.index(newStr1.endIndex, offsetBy: offsetEnd, limitedBy: newStr1.startIndex){
                                newStr1 = String(newStr1[..<auxNewIndex2])
                            }
                            newStr1 = newStr3 + newStr1
                        }
                        
                    }
                    print(newStr1)
                    if let auxUrl = url {
                        print(auxUrl)
                        print("")
                    }

                } else if let newIndex = newStr1.index(of: "Exemplos de Entrada"){
                    newStr2 = String(newStr1[newIndex...])
                    newStr1 = String(newStr1[..<newIndex])
                    
                    if let auxIndex = newStr2.index(newStr2.startIndex, offsetBy: 70, limitedBy: newStr2.endIndex) {
                        newStr2 = String(newStr2[auxIndex...])
                    }
                    if let auxIndex = newStr1.index(of: "Timelimit"){
                        let newStr3 = String(newStr1[..<auxIndex])
                        newStr1 = String(newStr1[auxIndex...])
                        if let auxNewIndex = newStr1.index(newStr1.startIndex, offsetBy: offsetTimelimit, limitedBy: newStr1.endIndex){
                            newStr1 = String(newStr1[auxNewIndex...])
                            if let auxNewIndex2 = newStr1.index(newStr1.endIndex, offsetBy: offsetEnd, limitedBy: newStr1.startIndex){
                                newStr1 = String(newStr1[..<auxNewIndex2])
                            }
                            newStr1 = newStr3 + newStr1
                        }
                        
                    }
                    print(newStr1)
                    if let auxUrl = url {
                        print(auxUrl)
                        print("")
                    }
                }
            }
        }
    }
    catch let error {
        print(error.localizedDescription)
        print("Deu Error")
    }
}


ByIdOrRandom.main()
