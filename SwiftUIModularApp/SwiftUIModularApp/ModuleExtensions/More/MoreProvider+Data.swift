import Foundation
import MoreModule
import DataModule
import UIKit
import Combine

extension MoreProvider: DataServiceInterface {
    func getItems() -> AnyPublisher<[ItemInterface], Error> {
        dataManager
            .getMoreItems()
            .map { items in items.map { $0 as ItemInterface } }
            .eraseToAnyPublisher()
    }
}

extension MoreAction: ItemInterface {
    public var id: String { rawValue }
    public var title: String { rawValue.capitalized }
    public var detail: String? {
       "Scan a QR code to pay at various places and cash in or cash out money"
    }
    public var image: UIImage? { nil }
}
