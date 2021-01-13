//
//  main.swift
//  WordFinder
//
//  Created by blitz on 2021/1/13.
//

import Foundation

struct Wordlasso {
    func run() throws {
        let wordListPath = "/usr/share/dict/words"
        let wordFinder = try WordFinder(wordListPath: wordListPath, ignoreCase: true)
        
        let args = CommandLine.arguments
        print("Command-line arguments: \(args)")
        
        let template: String
        if args.count > 1 {
            template = args[1]
        } else {
            print("Enter word template: ",terminator: "")
            template = readLine() ?? ""
            
        }
        findAndPrintMatches(for: template, using: wordFinder)
    }
    private func findAndPrintMatches(for template: String,
                                     using wordFinder: WordFinder){
        let matches = wordFinder.findMatches(for: template)
        print("Found \(matches.count) \(matches.count == 1 ? "match" : "matches"):")
        for match in matches {
            print(match)
        }
    }
}

do  {
    try Wordlasso().run()
} catch {
    fatalError("Program exited unexpectedly. \(error)")
}
