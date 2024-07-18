import UIKit
import Login
import Network
import Shared

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var authService: AuthenticationService!
    var networkService: NetworkService!

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        // Dependency Injection
        authService = LoginService()
        networkService = NetworkServiceImplementation()

        // Example usage
        let isAuthenticated = authService.login(username: "user", password: "pass")
        print("Authenticated: \(isAuthenticated)")

        let url = URL(string: "https://example.com")!
        networkService.fetchData(from: url) { data in
            print("Data fetched: \(data)")
        }

        return true
    }
}
