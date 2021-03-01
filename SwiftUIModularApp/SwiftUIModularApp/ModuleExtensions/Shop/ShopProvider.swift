import Foundation
import ShopModule
import DataModule
import SwiftUI
import Combine

struct ShopProvider {
    let dataManager: DataManager
}

extension ShopProvider {
    static let provider = ShopProvider(
        dataManager: DataManager()
    )
    
    static func createView() -> ContentView {
        let viewModel = ViewModel(dataService: provider)
        return ContentView(viewModel: viewModel)
    }
}
