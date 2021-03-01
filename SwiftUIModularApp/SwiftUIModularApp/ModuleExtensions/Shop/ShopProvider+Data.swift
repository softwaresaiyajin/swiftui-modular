import Foundation
import ShopModule
import DataModule
import UIKit
import Combine

extension ShopProvider: DataServiceInterface {
    func getItems() -> AnyPublisher<[ItemInterface], Error> {
        dataManager
            .getAvailableShops()
            .map { items in items.map(ModelWrapper.init) }
            .eraseToAnyPublisher()
    }
}

extension ModelWrapper: ItemInterface where T == Shop {

    var image: UIImage? { nil }
    
    //var imageUrlString: String { model.imageUrl }
    
    var id: String { model.title }
    
    var title: String { model.title }
    
    var detail: String? { model.detail }
    
    var link: String { model.link }
}
