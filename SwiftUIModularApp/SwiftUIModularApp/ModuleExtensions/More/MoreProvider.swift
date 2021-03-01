import Foundation
import MoreModule
import DataModule
import SwiftUI
import Combine

struct MoreProvider {
    let router: MoreRouter
    let dataManager: DataManager
}

extension MoreProvider {
    private static let provider = MoreProvider(
        router: MoreRouter(),
        dataManager: DataManager()
    )
    
    static func createView() -> some View {
        NavigationView {
            let viewModel = ViewModel(dataService: provider, routerService: provider)
            ContentView(viewModel: viewModel)
        }
    }
}
