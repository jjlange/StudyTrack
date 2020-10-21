//
// Created by Justin Lange on 21/10/2020.
//

import SwiftUI
import SwiftyJSON

struct HomeTabView: View {

    // labels
    @State var titleLabel: String = "Welcome back  👋"

    @State private var pushWelcomeView = false


    // status message
    /*@State var statusMessageBackground: Color = Color.red
    @State var statusMessageForeground: Color = .white
    @State var statusMessageTitle: String = "High Risk"
    @State var statusMessageContent: String = "We do not recommend on campus lectures"*/
    /*@State var statusMessageBackground: Color = Color.orange
    @State var statusMessageForeground: Color = .white
    @State var statusMessageTitle: String = "Medium Risk"
    @State var statusMessageContent: String = "We do not recommend too much on campus activity"*/

    @State var statusMessageBackground: Color = Color.green
    @State var statusMessageForeground: Color = .white
    @State var statusMessageTitle: String = "No Risk"
    @State var statusMessageContent: String = "There is almost no risk in attending on campus lectures"

    var body: some View {
        VStack() {
            VStack(alignment: .leading, spacing: 25) {
                HStack {
                    Text("Home")
                            .font(.system(size: 36, weight: .bold, design: .rounded))
                            .padding(.top, 20)
                    Spacer()
                    HStack {
                        Button (action: {
                            self.pushWelcomeView = true
                            UserDefaults.standard.setLoggedIn(value: false)
                        }) {
                            Text("Sign Out").font(.system(size: 20, weight: .light, design: .rounded))
                                    .padding(.top, 20)
                        }
                        Label("", systemImage: "arrow.right").font(.system(size: 20, weight: .light, design: .rounded))
                                .padding(.top, 20).foregroundColor(.blue)
                    }
                }
                Text("Howdy, \(UserDefaults.standard.getFirstName())! 👋")
                        .font(.system(size: 25, weight: .regular, design: .rounded))
                        .padding(.top, -10)
                        .padding(.bottom, 10)
            }
        }.padding().frame(width: 400, alignment: .topLeading)
        ScrollView {
            Text("\(UserDefaults.standard.getUniversityName())")
                    .font(.system(size: 25, weight: .semibold, design: .rounded))
                    .padding(.top, 20).multilineTextAlignment(.center)
            VStack(alignment: .leading, spacing: 25) {
                HStack {
                    Text(self.statusMessageTitle).font(.system(size: 30, weight: .bold, design: .rounded)).multilineTextAlignment(.center)
                    Text(self.statusMessageContent).font(.system(size: 23, weight: .regular, design: .rounded)).padding(.leading, 10).multilineTextAlignment(.center)
                    Spacer()
                }
                        .padding(.all)
                        .foregroundColor(self.statusMessageForeground)
                        .cornerRadius(7)
            }.frame(minWidth: 0, maxWidth: .infinity)
                    .background(self.statusMessageBackground)
                    .cornerRadius(7)
                    .padding(.top, 5)
                    .padding(.horizontal, 24)
            Text("There are no other updates  ✅").multilineTextAlignment(.center).padding(.top, 20).font(.system(size: 20, weight: .medium, design: .default))
            Spacer()
            NavigationLink("", destination: LoginView(), isActive: $pushWelcomeView).hidden()
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
