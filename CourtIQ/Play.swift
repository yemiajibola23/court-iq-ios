//
//  Play.swift
//  CourtIQ
//
//  Created by Amira Ajibola  on 8/10/25.
//

import Foundation

struct Play: Identifiable, Hashable {
    var id: String
    var title: String
    var playType: String?
    var createdAt: Date = .init()
}
