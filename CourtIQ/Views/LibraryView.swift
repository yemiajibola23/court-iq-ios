//
//  LibraryView.swift
//  CourtIQ
//
//  Created by Amira Ajibola  on 8/10/25.
//

import SwiftUI

struct LibraryView: View {
    @Binding var selectedPlay: Play?
    
    init(selectedPlay: Binding<Play?> = .constant(nil)) {
        self._selectedPlay = selectedPlay
    }
    
    private var plays: [Play] = [
        .init(id: "1", title: "Spain PnR — Celtics", playType: "Spain PnR"),
        .init(id: "2", title: "Horns Flare — Nuggets", playType: "Horns"),
        .init(id: "3", title: "Chicago Action — Warriors", playType: "Chicago")
    ]
    
    var body: some View {
        List(plays) { play in
            Button {
                selectedPlay = play
            } label: {
                HStack {
                    VStack(alignment: .leading) {
                        Text(play.title)
                            .font(.headline)
                        if let t = play.playType {
                            Text(t)
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.tertiary)
                    }
                }
            }
        }
    }
}

#Preview {
    LibraryView()
}
