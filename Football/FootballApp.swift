//
//  FootballApp.swift
//  Football
//
//  Created by Alonso Alas on 19/5/22.
//

import SwiftUI

@main
struct FootballApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
