//
//  PlayDetailView.swift
//  CourtIQ
//
//  Created by Amira Ajibola  on 8/10/25.
//

import SwiftUI

struct PlayDetailView: View {
    let play: Play
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(play.title)
                    .font(.title)
                    .bold()
                
                if let pt = play.playType {
                    Text(pt)
                        .font(.headline)
                        .foregroundStyle(.secondary)
                }
                
                Picker("Mode", selection: .constant(0)) {
                    Text("Video")
                        .tag(0)
                    Text("Diagram")
                        .tag(1)
                }
                .pickerStyle(.segmented)
                
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(style: StrokeStyle(lineWidth: 1))
                    .frame(height: 220)
                    .overlay(Text("AVPlayer / Diagram View"))
                
                // Actions
                HStack(spacing: 12) {
                    Button("Save *") {}
                    Button("Annotate ✏️") {}
                    Button("Share") {}
                }
                
                // Teaching Mode
                VStack(alignment: .leading, spacing: 8) {
                    Text("Teaching Mode")
                        .font(.headline)
                    ForEach(0..<4) { i in
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.gray.opacity(0.08))
                            .frame(height: 44)
                            .overlay(
                                HStack {
                                    Text("Key point \(i+1)")
                                    Spacer()
                                }
                                .padding(.horizontal)
                            )
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    PlayDetailView(play: Play(id: "1", title: "Spain PnR — Celtics", playType: "Spain PnR"))
}
