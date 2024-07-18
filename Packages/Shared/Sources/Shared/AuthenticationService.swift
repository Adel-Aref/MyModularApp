public protocol AuthenticationService {
    func login(username: String, password: String) -> Bool
}
