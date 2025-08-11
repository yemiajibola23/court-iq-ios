//
//  CourtIQApp.swift
//  CourtIQ
//
//  Created by Amira Ajibola  on 8/10/25.
//

import SwiftUI
import Firebase

@main
struct CourtIQApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
