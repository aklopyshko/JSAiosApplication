//
//  appApp.swift
//  app
//
//  Created by Александр Клопышко on 10.01.2021.
//

import SwiftUI
import UIKit
import Firebase


@main
struct appApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    func application(_ application: UIApplication,
      didFinishLaunchingWithOptions launchOptions:
          [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      FirebaseApp.configure()
      return true
    }
}
