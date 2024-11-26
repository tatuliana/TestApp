//
//  LoginView.swift
//  TestApp
//
//  Created by Natalia Popova on 11/23/24.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var showAlert = false
    @State private var alertMessage = ""
    @State private var showHomeView = false

    var body: some View {
        VStack(spacing: 60) {
            // Title
            Text("Login")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.red)
                .frame(maxWidth: .infinity)

            // TextFields
            VStack(spacing: 16) {
                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .padding(.horizontal)

                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
            }

            // Login Button
            Button(action: handleLogin) {
                Text("Login")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(username.isEmpty || password.isEmpty ? Color.gray : Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .disabled(username.isEmpty || password.isEmpty)
            .padding(.horizontal)

            Spacer() // Pushes the content up
        }
        .padding()
        .ignoresSafeArea(.keyboard, edges: .bottom) // Prevents keyboard conflicts
        .navigationBarHidden(true)
        .navigationDestination(isPresented: $showHomeView) {
            HomeView()
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Error"),
                message: Text(alertMessage),
                dismissButton: .default(Text("OK"))
            )
        }
    }

    private func handleLogin() {
        if username == "Santa" && password == "12345" {
            showHomeView = true
        } else {
            alertMessage = "Username or password is invalid"
            showAlert = true
        }
    }
}

#Preview {
    LoginView()
}
