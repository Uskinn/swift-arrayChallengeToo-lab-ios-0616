//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func addNameToDeliLine(name: String) -> String {
        if name == "Billy Crystal" {
            self.deliLine.insert(name, atIndex: 0)
            return "Welcome Billy! You can sit wherever you like."
        } else if name == "Meg Ryan" {
            self.deliLine.insert(name, atIndex: 0)
            return "Welcome Meg! You can sit wherever you like."
        } else {
            self.deliLine.append(name)
            if self.deliLine.count == 1 {
                return "Welcome \(name), you're first in line!"
            } else {
                return "Welcome \(name), you're number \(self.deliLine.count) in line."
            }
        }
    }
    
    func nowServing() -> String {
        
        if self.deliLine .isEmpty {
            return "There is no-one to be served."
        } else {
            self.deliLine.removeAtIndex(0)
            return "Now serving \(self.deliLine.first)!"
        }
    }
    
    func deliLineDescription() -> String {
        if self.deliLine.isEmpty {
            return "The line is currently empty."
        } else {
            var result: String = ""
            for (index, name) in self.deliLine.enumerate() {
                result = "\(index). \(name)"
            }
            return "The line is: \(result)"
        }
    }
}
























