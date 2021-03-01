import Foundation
import Combine

public class DataManager {
    
    public init() { }
    
    public func getMoreItems() -> AnyPublisher<[MoreAction], Error> {
        Just(MoreAction.allCases)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
    
    public func getAvailableShops() -> AnyPublisher<[Shop], Error> {
        FirebaseManager.getModels(query: "online_shops")
    }
}
