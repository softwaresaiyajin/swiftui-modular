import Foundation
import UIKit

public protocol ItemInterface {
    var id: String { get }
    var title: String { get }
    var detail: String? { get }
    var image: UIImage? { get }
}
