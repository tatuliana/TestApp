//
//  SettingsView.swift
//  TestApp
//
//  Created by Natalia Popova on 11/23/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
            Text("Settings")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.gray)
                .padding()
            
            Image(systemName: "gearshape.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundColor(.gray)

            Spacer()
        }
        .padding()
    }
}

#Preview {
    SettingsView()
}
