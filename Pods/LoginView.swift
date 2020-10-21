//
// Created by Justin Lange on 17/10/2020.
//

import SwiftUI

struct LoginView: View {

    // states
    @State var email: String = "test@test.com"
    @State var password: String = "test"
    @State var titleLabel: String = "Welcome back  👋"
    @State private var pushHomeView = false

    let controller = SignIn()

    var body: some View {
        VStack {
            Image("start_image_view").resizable()
                    .frame(height: 250.0, alignment: .top).ignoresSafeArea()

            VStack() {
                VStack(alignment: .leading, spacing: 25) {
                    Text(titleLabel)
                            .font(.system(size: 34, weight: .bold, design: .rounded)).padding(.top, 20).padding(.bottom, 10)
                    TextField("University Email", text: $email).autocapitalization(.none).padding(.all).disableAutocorrection(true)
                            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)).cornerRadius(7)
                    SecureField("University Password", text: $password).padding(.all)
                            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)).cornerRadius(7)

                    Button(action: {
                        print("[TrackAndTrace]: UserService -> Logging in...")

                        // try to log in user
                        self.controller.login(email: self.email, password: self.password, completion: {(user, success)-> Void in
                            if(success!) {
                                // push home view
                                //self.titleLabel = "You're logged in as: " + user!.email
                                self.pushHomeView = true
                            } else {
                                // throw error message, maybe show an alert?
                                self.titleLabel = "Enter a valid email address or password"
                            }
                        })
                    }) {
                        HStack {
                            Spacer()
                            Text("Continue")
                                    .fontWeight(.semibold)
                                    .font(.title2)
                            Spacer()
                        }
                                .frame(alignment: .topLeading)
                                .padding(.all)
                                .foregroundColor(.white)
                                .background(LinearGradient(gradient: Gradient(colors: [Color("Gray"), Color("Blue")]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(7)
                                .padding(.top, 10)
                    }
                }.padding().frame(width: 400, alignment: .topLeading)
            }.padding(.top, -50).padding(.bottom, 50)
            Spacer()
            NavigationLink("", destination: HomeView(), isActive: $pushHomeView).hidden()
        }.navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
