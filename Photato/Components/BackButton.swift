import SwiftUI

struct BackButton: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            EmptyView()
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.white)
                    Text("뒤로가기")
                        .foregroundColor(.white)
                        .font(.custom("Pretendard-Bold", size: 16))
                }
            }
        }
    }
}
