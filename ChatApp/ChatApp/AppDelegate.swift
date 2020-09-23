//
//  AppDelegate.swift
//  ChatApp
//
//  Created by Vladimir Konovalenko on 16.09.2020.
//  Copyright © 2020 Vladimir Konovalenko. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    private var oldState: String = "Not running"
    private var logsCounter = 1
    private var lifecycleLogs = false
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if ProcessInfo.processInfo.environment["lifecycleLogsEnvironment"] == "true" {
            lifecycleLogs = true
        }
        printState(newState: "Inactive (launching)", function: #function)
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        printState(newState: "Active", function: #function)
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        printState(newState: "Inactive", function: #function)
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        printState(newState: "Background", function: #function)
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        printState(newState: "Foreground", function: #function)
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        printState(newState: "Suspended", function: #function)
    }
    
    private func printState(newState: String, function: String) {
        if(lifecycleLogs){
            print("\(logsCounter).Application moved from \(self.oldState) state to \(newState) state\n \(function)")
            logsCounter+=1
            self.oldState = newState
        }
    }
}

