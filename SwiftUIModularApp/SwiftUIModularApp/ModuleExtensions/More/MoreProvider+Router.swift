import Foundation
import MoreModule
import SwiftUI
import DataModule

extension MoreProvider: RouterServiceInterface {
    func getDestination(for item: ItemInterface) -> AnyView? {
        guard let action = item as? MoreAction else {
            return nil
        }
        switch action {
        case .shops:
            return AnyView(router.loadShop())
        default:
            return AnyView(Text("Under development: \(item.title)"))
        }
    }
}
