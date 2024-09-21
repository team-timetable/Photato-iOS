import SwiftUI

struct LoginView: View {
    @StateObject var LoginMV: LoginModelView = .init()
    var body: some View {
        VStack {
            Spacer()
            Text("로그인")
                .foregroundColor(.white)
                .font(.custom("Pretendard-Bold", size: 30))
                .padding(.bottom, 20)
            RoundedRectangle(cornerRadius: 40)
                .edgesIgnoringSafeArea(.bottom)
                .frame(maxWidth: .infinity, maxHeight: 613)
                .foregroundColor(.white)
                .overlay(
                    VStack {
                        CustomTextField(text: $LoginMV.username, img: "plantFill", placeholder: "이름을 입력해주세요")
                            .padding(.bottom, 5)
                        CustomTextField(text: $LoginMV.password, img: "plantFill", placeholder: "비밀번호를 입력해주세요")
                        
                    }
                        .padding(.bottom, 450)
                )
        }
        .background(.main)
        .overlay(
            VStack {
                MainButton(text: "로그인", color: .main) {
                    print("로그인 버튼이 눌렸어요")
                }
            }
                .padding(.top, UIScreen.main.bounds.height * 0.72)
        )
    }
}

#Preview {
    LoginView()
}
