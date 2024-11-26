//
//  LaunchView.swift
//  TestApp
//
//  Created by Natalia Popova on 11/23/24.
//

import SwiftUI

struct LaunchView: View {
    @State private var showLoginView = false // Use a simple toggle for navigation

    var body: some View {
        NavigationStack {
            VStack {
                Text("Hi, friend!")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.red)
                    .padding()
                Spacer()
                Button("Go") {
                    showLoginView = true // Trigger navigation
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
                .accessibilityIdentifier("goButton")
                Spacer()
            }
            .padding()
            .navigationBarHidden(true) // Hide navigation bar
            .navigationDestination(isPresented: $showLoginView) {
                LoginView()
            }
        }
    }
}

#Preview {
    LaunchView()
}


