//
//  PhoneMainTabView.swift
//  CourtIQ
//
//  Created by Amira Ajibola  on 8/10/25.
//

import SwiftUI

enum PhoneTab: Hashable {
    case home, upload, library, learn
}

struct PhoneMainTabView: View {
    @State private var selection: PhoneTab = .home
    
    var body: some View {
        TabView(selection: $selection) {
            NavigationStack {
                HomeView()
            }
            .tabItem{ Label("Home", systemImage: "house") }
            .tag(PhoneTab.home)
            
            NavigationStack {
                UploadView()
            }
            .tabItem{ Label("Upload", systemImage: "square.and.arrow.up") }
            .tag(PhoneTab.upload)
            
            NavigationStack {
                LibraryView()
            }
            .tabItem{ Label("Library", systemImage: "books.vertical") }
            .tag(PhoneTab.library)
            
            NavigationStack {
                LearnView()
            }
            .tabItem{ Label("Learn", systemImage: "graduationcap") }
            .tag(PhoneTab.learn)
        }
    }
}


#Preview {
    PhoneMainTabView()
}
