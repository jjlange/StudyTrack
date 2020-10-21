//
// Created by Justin Lange on 17/10/2020.
//

import SwiftUI

struct GettingStartedView: View {
    var body: some View {
        VStack {
            Image("start_image_view").resizable()
                    .frame(height: 250.0, alignment: .top).ignoresSafeArea()

            VStack() {
                VStack(alignment: .leading) {
                    Text("Getting Started 🚀")
                            .font(.system(size: 34, weight: .bold, design: .rounded)).padding(.top, 20).padding(.bottom, 20)
                    Text("Are you a student or")
                            .font(.system(size: 32, weight: .semibold, design: .rounded))
                    Text("administrator?")
                            .font(.system(size: 32, weight: .semibold, design: .rounded))
                }.padding().frame(width: 400, alignment: .topLeading)
            }.padding(.top, -50).padding(.bottom, 50)

            NavigationLink(destination: LoginView()) {
                HStack {
                    Text("Student")
                            .fontWeight(.semibold)
                            .font(.title2)
                }
                        .frame(minWidth: 0, maxWidth: 240)
                        .padding()
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color("Gray"), Color("Blue")]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(50)
                        .padding(.top, 20)
            }

            NavigationLink(destination: ALoginView()) {
                HStack {
                    Text("Administrator")
                            .fontWeight(.semibold)
                            .font(.title2)
                }
                        .frame(minWidth: 0, maxWidth: 240)
                        .padding()
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color("Gray"), Color("Blue")]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(50)
                        .padding(.top, 20)
            }
            Spacer()
        }.navigationBarHidden(true)
    }
}

struct GettingStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GettingStartedView()
    }
}
