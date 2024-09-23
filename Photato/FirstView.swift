import SwiftUI

struct FirstView: View {
    
    @State private var Loginboolean = false
    @State private var Signupboolean = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .foregroundColor(.main)
                Ellipse()
                    .frame(width: 730, height: 678)
                    .padding(.top, 560)
                    .foregroundColor(.white)
                VStack {
                    Image("potato")
                    Image("potatoText")
                }
                .padding(.bottom, 120)
            }
            .overlay(
                VStack {
                    MainButton(text: "로그인", color: .main) {
                        Loginboolean.toggle()
                    }
                    MainButton(text: "회원가입", color: .white) {
                        Signupboolean.toggle()
                    }
                }
                    .padding(.top, UIScreen.main.bounds.height * 0.72)
                    .navigationDestination(isPresented: $Loginboolean) {
                        LoginView()
                    }
                    .navigationDestination(isPresented: $Signupboolean) {
                        SignupView()
                    }
            )
        }
    }
}


#Preview {
    FirstView()
}
