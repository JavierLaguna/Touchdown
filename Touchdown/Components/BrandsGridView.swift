
import SwiftUI

struct BrandsGridView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            }
            .frame(height: 200)
            .padding(15)
        }
    }
}

struct BrandsGridView_Previews: PreviewProvider {
    
    static var previews: some View {
        BrandsGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
