import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    let img: String
    var placeholder: String
    
    var body: some View {
        HStack {
            Image(img)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 28)
                .padding(.leading, 10)
            TextField(placeholder, text: $text)
        }
        .frame(width: 304, height: 44)
        .background(.white)
        .cornerRadius(8)
        .shadow(
            color: Color(.sRGBLinear, white: 0, opacity: 0.05),
            radius: 6, x: 0, y: 1
        )
    }
}
