
import SwiftUI

struct MainView: View {
    
    @EnvironmentObject private var shop: Shop
    
    var body: some View {
        if shop.showingProduct && shop.selectedProduct != nil {
            ProductDetailView()
            
        } else {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding()
                    .background(.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.475) // This will fix the layout rendering priority issue by using the screen's aspect ratio.
                            .padding(.vertical, 20)
                        
                        CategoriesGridView()
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15) {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                                    .onTapGesture {
                                        feedback.impactOccurred()
                                        
                                        withAnimation(.easeOut) {
                                            shop.selectedProduct = product
                                            shop.showingProduct = true
                                        }
                                    }
                            }
                        }
                        .padding(15)
                        
                        TitleView(title: "Brands")
                        
                        BrandsGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    }
                }
            }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }
    }
}

struct MainView_Previews: PreviewProvider {
    
    static var previews: some View {
        MainView()
            .environmentObject(Shop())
    }
}
