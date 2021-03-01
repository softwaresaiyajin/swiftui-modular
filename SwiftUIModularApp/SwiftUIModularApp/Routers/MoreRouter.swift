import Foundation
import SwiftUI

struct MoreRouter {
    
    func loadShop() -> some View {
        ShopProvider.createView()
    }
}
