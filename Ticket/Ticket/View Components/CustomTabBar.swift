//
//  CustomTabBar.swift
//  Ticket
//
//  Created by Mohamed Fawzi on 12/18/23.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var currentTab: Tab
    var body: some View {
        HStack(spacing: 0.0) {
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                Button {
                    withAnimation(.easeInOut) {
                        currentTab = tab
                    }
                } label: {
                    Image(tab.rawValue)
                        .renderingMode(.template)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                }
            }
        }
        .frame(maxWidth: .infinity)
        .background(.red)
    }
}

#Preview {
    ContentView()
}
