//
//  ViewController.swift
//  ChatApp
//
//  Created by Vladimir Konovalenko on 16.09.2020.
//  Copyright © 2020 Vladimir Konovalenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var viewControllerLifecycleLogs = false
    
    var logsCounter = 1
    var oldState: String = "Viev not loaded"
    
    func printState(newState: String, function: String){
        if(viewControllerLifecycleLogs){
            print("\(logsCounter)v.ViewController moved from \(self.oldState) state to \(newState) state\n \(function)")
            logsCounter+=1
            self.oldState = newState
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if ProcessInfo.processInfo.environment["viewControllerLifecycleLogsEnvironment"] == "true" {
            viewControllerLifecycleLogs = true
        }
        printState(newState: "View is loaded", function: #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printState(newState: "View will appear", function: #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        printState(newState: "View did appear now", function: #function)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        printState(newState: "View is updated, rotated or changed", function: #function)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        printState(newState: "View will its bounds changed", function: #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printState(newState: "View will disappear", function: #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        printState(newState: "View did disappear now", function: #function)
    }
}

