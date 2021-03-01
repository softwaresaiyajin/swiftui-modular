import SwiftUI
import Combine

public struct ContentView: View {
    
    @ObservedObject var viewModel: ViewModel
    
    public init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }

    public var body: some View {
        List {
            if viewModel.items.isEmpty {
                emptyView
            } else {
                moreItemsView
            }
        }
        .navigationBarTitle("More Features")
        .onAppear(perform: loadData)
    }
    
    private var moreItemsView: some View {
        Section {
            ForEach(0..<viewModel.items.count) { idx in
                let item = viewModel.items[idx]
                if let destination = viewModel.getDestination(for: item) {
                    NavigationLink(destination: destination) {
                        ItemRow(item: item)
                    }
                } else {
                    ItemRow(item: item)
                }
            }
        }
    }
    
    private var emptyView: some View {
        Section {
            Text("No results")
                .foregroundColor(.gray)
        }
    }
    
    private func loadData() {
        viewModel.loadItems()
    }
}
/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(
            viewModel: ViewModel(
                dataService: MockDataService(),
                routerService: MockRouterService()
            )
        )
    }
}

private struct MockDataService: DataServiceInterface {
    func getItems() -> AnyPublisher<[ItemInterface], Error> {
        Just(PreviewItem.mocks)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
}

private struct MockRouterService: RouterServiceInterface {
    typealias Destination = Text
    
    func getDestination(for item: ItemInterface) -> Destination {
        return Text("dsadas")
    }
}
*/
