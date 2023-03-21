
import Foundation

final class Shop: ObservableObject {
    @Published var showingProduct = false
    @Published var selectedProduct: Product?
}
