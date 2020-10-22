//
// Created by Justin Lange on 17/10/2020.
//

import SwiftUI

struct ALoginView: View {
    var body: some View {
        VStack {
            Image("start_image_view").resizable()
                    .frame(height: 250.0, alignment: .top).ignoresSafeArea()

            VStack() {
                VStack(alignment: .leading) {
                    Text("Administrator")
                            .font(.system(size: 34, weight: .bold, design: .rounded)).padding(.top, 20).padding(.bottom, 20)
                    Text("Register your university to the StudyTrack program.")
                            .font(.system(size: 32, weight: .semibold, design: .rounded))
                }.padding().frame(width: 400, alignment: .topLeading)
            }.padding(.top, -50).padding(.bottom, 50)
            Spacer()
        }.navigationBarHidden(true)
    }
}

struct ALoginView_Previews: PreviewProvider {
    static var previews: some View {
        ALoginView()
    }
}
