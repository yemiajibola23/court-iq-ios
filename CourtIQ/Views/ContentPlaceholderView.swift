//
//  ContentPlaceholderView.swift
//  CourtIQ
//
//  Created by Amira Ajibola  on 8/10/25.
//

import SwiftUI

struct ContentPlaceholderView: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack(spacing: 8) {
            Text(title).font(.title2).bold()
            Text(subtitle).foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ContentPlaceholderView(title: "Test", subtitle: "This is a test")
}
