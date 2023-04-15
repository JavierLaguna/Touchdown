
import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(Shop())
        }
    }
}
