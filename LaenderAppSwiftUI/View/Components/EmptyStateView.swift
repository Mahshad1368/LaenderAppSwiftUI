//
//  EmptyStateView.swift
//  LaenderAppSwiftUI
//
//  Created by Mahshad Jafari on 05.08.24.
//

import SwiftUI

struct EmptyStateView: View {
    var body: some View {
        VStack{
            Image(systemName: "suit.heart")
                .font(.system(size: 100))
                .padding()
            Text("Momentan sind keine Favoriten vorhanden")
        }
    }
}

#Preview {
    EmptyStateView()
}
