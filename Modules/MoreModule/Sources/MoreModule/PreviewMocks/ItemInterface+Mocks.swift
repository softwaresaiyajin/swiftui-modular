import Foundation
import UIKit

struct PreviewItem: ItemInterface {
    let id: String
    let title: String
    let detail: String?
    let image: UIImage?
}

extension PreviewItem {

    static let mocks: [ItemInterface] = {
        let titles = ["Shop", "Places", "Onboarding"]
        return titles.map { title in
            PreviewItem(
                id: title,
                title: title,
                detail: "Scan a QR code to pay at various places and cash in or cash out money",
                image: nil
            )
        }
    }()
}
