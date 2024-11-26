//
//  HomeView.swift
//  TestApp
//
//  Created by Natalia Popova on 11/23/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            WelcomeView() // Main content of the first tab
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            ProfileView() // Second tab
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
            
            SettingsView() // Third tab
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
        .accentColor(.green) // Set the selected tab bar color to green

        .navigationBarHidden(true) // Hide the navigation bar
    }
}

#Preview {
    HomeView()
}
