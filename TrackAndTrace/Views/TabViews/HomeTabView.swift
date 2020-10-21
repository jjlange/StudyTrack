//
// Created by Justin Lange on 21/10/2020.
//

import SwiftUI

struct HomeTabView: View {

    // labels
    @State var titleLabel: String = "Welcome back  👋"

    // status message
    @State var statusMessageBackground: Color = Color.red
    @State var statusMessageForeground: Color = .white
    @State var statusMessageContent: String = "The risk is currently: High \nWe do not recommend on-campus lectures."

    var body: some View {
        VStack() {
            VStack(alignment: .leading, spacing: 25) {
                HStack {
                    Text("Home")
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
                Text("Welcome back to your university tracking app")
                        .font(.system(size: 25, weight: .light, design: .rounded))
                        .padding(.top, -10)
                        .padding(.bottom, 10)
            }
        }.padding().frame(width: 400, alignment: .topLeading)
        VStack(alignment: .leading, spacing: 25) {
            HStack {
                Text(self.statusMessageContent).font(.system(size: 25, weight: .medium, design: .rounded))
                Spacer()
            }
                    .padding(.all)
                    .foregroundColor(self.statusMessageForeground)
                    .cornerRadius(7)
        }.frame(minWidth: 0, maxWidth: .infinity)
                .background(self.statusMessageBackground)
                .cornerRadius(7)
                .padding(.top, 15)
                .padding(.horizontal, 24)
        Spacer()
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
