import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
        setupAppearance()
        
        return true
    }
    
    func setupAppearance() {
        UINavigationBar.appearance().tintColor = UIColor(red: 254.0 / 255.0, green: 174.0 / 255.0, blue: 5.0 / 255.0, alpha: 1)
        UINavigationBar.appearance().barTintColor = UIColor(red: 33.0 / 255.0, green: 35.0 / 255.0, blue: 42.0 / 255.0, alpha: 1)
        UINavigationBar.appearance().titleTextAttributes = [ .foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
    }

}

