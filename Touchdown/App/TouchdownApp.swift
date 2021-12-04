//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Arthur Neves on 29/11/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(Shop())
        }
    }
}
