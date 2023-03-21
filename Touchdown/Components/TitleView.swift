
import SwiftUI

struct TitleView: View {
    
    private let title: String
    
    init(title: String) {
        self.title = title
    }
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.top, 15)
        .padding(.horizontal)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
