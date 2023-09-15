//
//  fundApp.swift
//  fund
//
//  Created by Ashutosh Sharma on 15/09/23.
//

import SwiftUI

@main
struct fundApp: App {
    
    var network = Network()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(network)
        }
    }
}
