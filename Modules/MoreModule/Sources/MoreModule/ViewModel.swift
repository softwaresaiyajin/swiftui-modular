import Combine
import Foundation
import SwiftUI

public class ViewModel: ObservableObject, Identifiable {
    
    private let dataService: DataServiceInterface
    private let routerService: RouterServiceInterface

    @Published var items: [ItemInterface] = []
    
    private var disposables = Set<AnyCancellable>()
    
    public init(
        dataService: DataServiceInterface,
        routerService: RouterServiceInterface
    ) {
        self.dataService = dataService
        self.routerService = routerService
    }
    
    func loadItems() {
        dataService
            .getItems()
            .receive(on: DispatchQueue.main)
            .sink(
                  receiveCompletion: { [weak self] value in
                    guard let self = self else { return }
                    switch value {
                    case .failure:
                      self.items = []
                    case .finished:
                      break
                    }
                  },
                  receiveValue: { [weak self] items in
                    self?.items = items
                }
            )
            .store(in: &disposables)
    }
    
    func getDestination(for item: ItemInterface) -> AnyView? {
        routerService.getDestination(for: item)
    }
}
