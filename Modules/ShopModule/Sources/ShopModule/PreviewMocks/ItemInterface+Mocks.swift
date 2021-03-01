import Foundation
import UIKit

struct PreviewItem: ItemInterface {
    let id: String
    let title: String
    let detail: String?
    let link: String
    let image: UIImage?
}

extension PreviewItem {

    static let mocks: [ItemInterface] = {
        let titles = ["Varle.lt", "Topocentras.lt", "Camelia.lt"]
        return titles.map { title in
            PreviewItem(
                id: title,
                title: title,
                detail: "Viskas vienoje vietoje - kompiuterinė ir butinė technika bei daugybė kitų prekių labai geromis kainomis.",
                link: "https://www.varle.lt/m/",
                image: nil
            )
        }
    }()
}
