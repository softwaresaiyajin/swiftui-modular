import Foundation
import ObjectMapper

public class Shop: ImmutableMappable {
    public let imageUrl: String
    public let title: String
    public let detail: String
    public let link: String
    
    required public init(map: Map) throws {
        link = try map.value("link")
        imageUrl = try map.value("logo_uri")
        title = try map.value("title")
        detail = try map.value("description")
    }
}
