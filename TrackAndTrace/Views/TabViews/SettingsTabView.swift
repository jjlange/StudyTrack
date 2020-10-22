//
// Created by Justin Lange on 21/10/2020.
//

import SwiftUI

struct SettingsTabView: View {
    @State private var pushWelcomeView = false
    @State private var exposeUser = true
    @State private var trackNotifications = true
    @State private var chatNotifications = true
    @State private var shareData = true

    var body: some View {
        VStack() {
            VStack(alignment: .leading, spacing: 25) {
                HStack {
                    Text("Settings")
                            .font(.system(size: 36, weight: .bold, design: .rounded))
                            .padding(.top, 20)
                    Spacer()
                    HStack {
                        Button (action: {
                            self.pushWelcomeView = true
                            UserDefaults.standard.setLoggedIn(value: false)
                        }) {
                            Text("Sign Out").font(.system(size: 20, weight: .medium, design: .rounded))
                                    .padding(.top, 20)
                        }
                        Label("", systemImage: "arrow.right").font(.system(size: 20, weight: .bold, design: .rounded))
                                .padding(.top, 20).foregroundColor(.blue)
                    }
                }

                ScrollView {
                    Text("\(UserDefaults.standard.getFirstName()) \(UserDefaults.standard.getSurname())")
                            .font(.system(size: 30, weight: .semibold, design: .rounded))
                            .padding(.top, 10)
                    Text("\(UserDefaults.standard.getEmail())")
                            .font(.system(size: 25, weight: .light, design: .rounded))

                    ZStack {
                        Toggle(isOn: $exposeUser) {
                            Text("Expose in Community").font(.system(size: 20, weight: .semibold, design: .rounded))
                        }.padding().background(Color(.systemGray4)).cornerRadius(7)
                    }.padding(.top, 15).cornerRadius(7)

                    ZStack {
                        Toggle(isOn: $trackNotifications) {
                            Text("Track notifications").font(.system(size: 20, weight: .semibold, design: .rounded))
                        }.padding().background(Color(.systemGray4)).cornerRadius(7)
                    }.padding(.top, 15).cornerRadius(7)

                    ZStack {
                        Toggle(isOn: $chatNotifications) {
                            Text("Chat notifications").font(.system(size: 20, weight: .semibold, design: .rounded))
                        }.padding().background(Color(.systemGray4)).cornerRadius(7)
                    }.padding(.top, 15).cornerRadius(7)

                    ZStack {
                        Toggle(isOn: $shareData) {
                            Text("Share data anonymous").font(.system(size: 20, weight: .semibold, design: .rounded))
                        }.padding().background(Color(.systemGray4)).cornerRadius(7)
                    }.padding(.top, 15).cornerRadius(7)
                }
            }
        }.padding().frame(width: 400, alignment: .topLeading)
        Spacer()
        NavigationLink("", destination: LoginView(), isActive: $pushWelcomeView).hidden()
    }
}

struct SettingsTabView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsTabView()
    }
}
