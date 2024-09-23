import SwiftUI

struct SignupView: View {
    @StateObject var SignupMV: SignupModelView = .init()
    
    var body: some View {
        VStack {
            Spacer()
            Text("회원가입")
                .foregroundColor(.white)
                .font(.custom("Pretendard-Bold", size: 30))
                .padding(.bottom, 20)
            RoundedRectangle(cornerRadius: 40)
                .edgesIgnoringSafeArea(.bottom)
                .frame(maxWidth: .infinity, maxHeight: 613)
                .foregroundColor(.white)
                .overlay(
                    VStack {
                        CustomTextField(text: $SignupMV.username, img: "plant", placeholder: "이름을 입력해주세요")
                            .padding(.bottom, 5)
                        CustomTextField(text: $SignupMV.password, img: "plant", placeholder: "비밀번호를 입력해주세요")
                            .padding(.bottom, 5)
                        CustomTextField(text: $SignupMV.password, img: "plant", placeholder: "비밀번호 확인할게여")
                    }
                        .padding(.bottom, 400)
                )
        }
        .background(.main)
        .overlay(
            VStack {
                MainButton(text: "회원가입", color: .main) {
                    print("회원가입 버튼이 눌렸어요")
                }
            }
                .padding(.top, UIScreen.main.bounds.height * 0.72)
        )
        BackButton()
    }
}

#Preview {
    SignupView()
}
