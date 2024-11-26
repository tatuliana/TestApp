//
//  WelcomeView.swift
//  TestApp
//
//  Created by Natalia Popova on 11/23/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack(spacing: 20) {
            Spacer()

            Text("Welcome, Santa!")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.green)
                .accessibilityIdentifier("welcomeLabel")

            Image(systemName: "gift.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
                .accessibilityIdentifier("homeImage")

            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
