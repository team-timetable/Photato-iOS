import SwiftUI

struct FirstView: View {
    
    var body: some View {
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
                    print("로그인 버튼이 눌렸어요")
                }
                MainButton(text: "회원가입", color: .white) {
                    print("회원가입 버튼이 눌렸어요")
                }
            }
            .padding(.top, UIScreen.main.bounds.height * 0.72)
        )
    }
}


#Preview {
    FirstView()
}
