//
//  CircleBackground.swift
//  Ticket
//
//  Created by Mohamed Fawzi on 12/17/23.
//

import SwiftUI

struct CircleBackground: View {
    @State var color: Color = Color("greenCircle")
    
    var body: some View {
        Circle()
            .frame(width: 300, height: 300)
            .foregroundColor(color)
    }
}

#Preview {
    CircleBackground()
}
