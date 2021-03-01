import Foundation
import ObjectMapper
import Combine

struct FirebaseManager {

    //TEMPORARY DUMMY DATA
    static func getModels<T: BaseMappable>(query: String) -> AnyPublisher<[T], Error> {
        guard
            let url =  Bundle.module.url(forResource: query, withExtension: "json"),
            let contents = try? String(contentsOf: url),
            let items = Mapper<T>().mapArray(JSONString: contents)
        else {
            return Just([])
                .setFailureType(to: Error.self)
                .eraseToAnyPublisher()
        }
        return Just(items)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
}
