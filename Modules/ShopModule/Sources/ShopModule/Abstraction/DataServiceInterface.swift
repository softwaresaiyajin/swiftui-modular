import Combine

public protocol DataServiceInterface {
    func getItems() -> AnyPublisher<[ItemInterface], Error>
}
