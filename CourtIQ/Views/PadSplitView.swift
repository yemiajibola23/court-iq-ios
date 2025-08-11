//
//  PadSplitView.swift
//  CourtIQ
//
//  Created by Amira Ajibola  on 8/10/25.
//

import SwiftUI

enum SidebarItem: String, CaseIterable, Identifiable {
    case home = "Home"
    case library = "Play Library"
    case upload = "Upload"
    case learn = "Learn"
    case favorites = "Favorites"
    
    var id: String { rawValue }
    var icon: String {
        switch self {
        case .home: return "house"
        case .library: return "books.vertical"
        case .upload: return "square.and.arrow.up"
        case .learn: return "graduationcap"
        case .favorites: return "star"
        }
    }
}

struct PadSplitView: View {
    @State private var selection: SidebarItem? = .home
    @State private var selectedPlay: Play? = nil
    
    var body: some View {
        NavigationSplitView {
            List(SidebarItem.allCases, selection: $selection) { item in
                Label(item.rawValue, systemImage: item.icon)
            }
            .navigationTitle("CourtIQ")
        } content: {
            switch selection {
            case .home:
                HomeView()
                    .navigationTitle("Home")
            case .library, .none:
                LibraryView()
                    .navigationTitle("Library")
            case .upload:
                UploadView()
                    .navigationTitle("Upload")
            case .learn:
                LearnView()
                    .navigationTitle("Learn")
            case .favorites:
                FavoritesView()
                    .navigationTitle("Favorites")
            }
        } detail: {
            if let play = selectedPlay {
                PlayDetailView(play: play)
            } else {
                ContentPlaceholderView(title: "Select a Play", subtitle: "Choose a play from the library to see details.")
            }
        }
    }
}


#Preview {
    PadSplitView()
}
