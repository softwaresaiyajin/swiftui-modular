import SwiftUI

@main
struct SwiftUIModularAppApp: App {
    
    var body: some Scene {
        WindowGroup {
            MoreProvider.createView()
        }
    }
}
