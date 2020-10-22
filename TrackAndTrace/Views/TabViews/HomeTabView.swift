//
// Created by Justin Lange on 21/10/2020.
//

import SwiftUI
import SwiftyJSON

struct HomeTabView: View {

    // labels
    @State var titleLabel: String = "Welcome back  👋"

    @State private var pushWelcomeView = false

    @State var statusMessageBackground: Color = Color.green
    @State var statusMessageForeground: Color = .white
    @State var statusMessageTitle: String = ""
    @State var statusMessageContent: String = ""

    var body: some View {
        VStack() {
            VStack(alignment: .leading, spacing: 25) {
                HStack {
                    Text("Track & Home")
                            .font(.system(size: 34, weight: .bold, design: .rounded))
                            .padding(.top, 20)
                    Spacer()
                    HStack {
                        Label("", systemImage: "heart.fill").font(.system(size: 36, weight: .light, design: .rounded))
                                .padding(.top, 20).foregroundColor(.blue)
                    }
                }
                Text("\(UserDefaults.standard.getUniversityName())")
                        .font(.system(size: 25, weight: .light, design: .rounded))
                        .padding(.top, -15)
                        .padding(.bottom, 10)
            }
        }.padding().frame(width: 400, alignment: .topLeading)
        ScrollView {
            VStack {
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
                Spacer()
                Spacer()
                VStack() {
                    ZStack {
                        BlurView(style: .systemMaterialDark)
                        VStack {
                            Text("Did you get tested, \(UserDefaults.standard.getFirstName())?").font(.system(size: 25, weight: .semibold, design: .rounded))
                            Text("We are running polls to improve our Track & Home page regularly. \n\nPlease tell us if you received a test result in the past 7 days.").font(.system(size: 20, weight: .regular, design: .rounded)).multilineTextAlignment(.center).padding(.top, 10)
                            NavigationLink(destination: GettingStartedView()) {
                                HStack {
                                    Text("I received a positive result")
                                            .fontWeight(.semibold)
                                            .font(.title3)
                                }
                                        .frame(minWidth: 0, maxWidth: 240)
                                        .padding()
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color("Gray"), Color("Blue")]), startPoint: .leading, endPoint: .trailing))
                                        .cornerRadius(50)
                                        .lineLimit(2)
                                        .padding(.top, 10)
                                        .multilineTextAlignment(.center)
                            }
                        }
                                .padding(.all)
                                .foregroundColor(.white)
                                .cornerRadius(7)
                    }
                }.frame(minWidth: 0, maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(7)
                        .padding(.top, 25)
                        .padding(.horizontal, 24)

                Text("That's it, you're up to date!  🎉").multilineTextAlignment(.center).padding(.top, 30).font(.system(size: 20, weight: .medium, design: .default))
                NavigationLink("", destination: LoginView(), isActive: $pushWelcomeView).hidden()
            }
        }.onAppear() {
            let riskLevel = UserDefaults.standard.getRiskLevel()
            switch riskLevel {
            case 1:
                self.statusMessageTitle = "No Risk"
                self.statusMessageBackground = Color.green
                self.statusMessageForeground = Color.white
                self.statusMessageContent = "There is almost no risk in attending on campus lectures"
            case 2:
                self.statusMessageTitle = "Medium Risk"
                self.statusMessageBackground = Color.orange
                self.statusMessageForeground = Color.white
                self.statusMessageContent = "We do not recommend too much on campus activity"
            case 3:
                self.statusMessageTitle = "High Risk"
                self.statusMessageBackground = Color.red
                self.statusMessageForeground = Color.white
                self.statusMessageContent = "We do not recommend on campus lectures"
            default:
                self.statusMessageTitle = "No Risk"
                self.statusMessageBackground = Color.green
                self.statusMessageForeground = Color.white
                self.statusMessageContent = "There is almost no risk in attending on campus lectures"
            }
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
