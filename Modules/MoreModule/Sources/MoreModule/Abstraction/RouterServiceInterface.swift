import Foundation
import SwiftUI

public protocol RouterServiceInterface {
    func getDestination(for item: ItemInterface) -> AnyView?
}
