//
//  ContentView.swift
//  Ticket
//
//  Created by Mohamed Fawzi on 12/17/23.
//

import SwiftUI

struct ContentView: View {
    @State var currentTab: Tab = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                TabView(selection: $currentTab) {
                    HomeView()
                        .tag(Tab.home)
                    
                    ComingSoonView()
                        .tag(Tab.location)
                    
                    TicketView()
                        .tag(Tab.ticket)
                    
                    ComingSoonView()
                        .tag(Tab.category)
                    
                    ComingSoonView()
                        .tag(Tab.profile)
                }
                
                CustomTabBar(currentTab: $currentTab)
            }
            .ignoresSafeArea(.keyboard)
        }
    }
}

#Preview {
    ContentView()
}
