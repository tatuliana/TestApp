//
//  ProfileView.swift
//  TestApp
//
//  Created by Natalia Popova on 11/23/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Text("Profile")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.green)
                .padding()
            
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundColor(.red)

            Spacer()
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
