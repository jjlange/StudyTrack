//
// Created by Justin Lange on 21/10/2020.
//

import SwiftUI

struct SettingsTabView: View {

    var body: some View {
        VStack() {
            VStack(alignment: .leading, spacing: 25) {
                HStack {
                    Text("Settings")
                            .font(.system(size: 36, weight: .bold, design: .rounded))
                            .padding(.top, 20)
                    Spacer()
                    HStack {
                        Text("Sign Out").font(.system(size: 20, weight: .light, design: .rounded))
                                .padding(.top, 20)
                        Label("", systemImage: "arrow.right").font(.system(size: 20, weight: .light, design: .rounded))
                                .padding(.top, 20)
                    }
                }
                Text("\(UserDefaults.standard.getFirstName()) \(UserDefaults.standard.getSurname())")
                        .font(.system(size: 30, weight: .semibold, design: .rounded))
                        .padding(.top, 10)
                Text("\(UserDefaults.standard.getEmail()) \n\(UserDefaults.standard.getUniversityName())")
                        .font(.system(size: 25, weight: .light, design: .rounded))
            }
        }.padding().frame(width: 400, alignment: .topLeading)
        Spacer()
    }
}

struct SettingsTabView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsTabView()
    }
}
