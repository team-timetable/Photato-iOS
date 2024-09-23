import Foundation

class LoginModelView: ObservableObject {
    @Published var username:String = ""
    @Published var password:String = ""
}
