//
//  WordFinder.swift
//  WordFinder
//
//  Created by blitz on 2021/1/13.
//

import Foundation

struct WordFinder {
    static let wildcard: Character = "."
    let wordlist: [String]
    
    private func isMatch(template: String,with word: String) -> Bool {
        return true
    }
    
    func findMatches(for template: String) -> [String] {
        return wordlist.filter { candidate in
            isMatch(template: template, with: candidate)
        }
    }
}
