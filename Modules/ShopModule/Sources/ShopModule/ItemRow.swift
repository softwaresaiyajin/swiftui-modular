import SwiftUI

struct ItemRow: View {
    
    let item: ItemInterface
    
    var body: some View {
        HStack {
            HStack(alignment: .center, spacing: 16) {
                
                if let image = item.image {
                    Image(uiImage: image)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .background(Color.clear)
                        .cornerRadius(15)
                }

                VStack(alignment: .leading) {
                    
                    if let value = item.title, !value.isEmpty {
                        Text(value)
                            .font(Font.system(size: 15).weight(.medium))
                            .foregroundColor(Color.black)
                            .lineLimit(1)
                            .minimumScaleFactor(0.7)
                    }
                    
                    if let value = item.detail, !value.isEmpty {
                        Text(value)
                            .font(Font.system(size: 13).weight(.regular))
                            .foregroundColor(Color.black)
                    }
                }
            }
            
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: PreviewItem.mocks.first!)
    }
}
