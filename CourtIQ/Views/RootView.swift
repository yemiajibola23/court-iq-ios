//
//  RootView.swift
//  CourtIQ
//
//  Created by Amira Ajibola  on 8/10/25.
//

import SwiftUI

struct RootView: View {
    @Environment(\.horizontalSizeClass) private var hSizeClass
    var body: some View {
        Group {
            if hSizeClass == .compact {
                PhoneMainTabView()
            } else {
                PadSplitView()
            }
        }
    }
}

#Preview {
    RootView()
}




