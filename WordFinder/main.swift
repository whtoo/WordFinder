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
        
        let template = "wo.."
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
