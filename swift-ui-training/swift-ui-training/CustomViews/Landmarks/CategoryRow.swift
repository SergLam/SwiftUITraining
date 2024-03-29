//
//  CategoryRow.swift
//  swift-ui-training
//
//  Created by Serg Liamthev on 6/10/19.
//  Copyright © 2019 serglam. All rights reserved.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(showsHorizontalIndicator: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.items) { landmark in
                        NavigationButton(
                            destination: LandmarkDetail(
                                landmark: landmark
                            )
                        ) {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
                }
                .frame(height: 185)
    }
}
}

#if DEBUG
struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(
            categoryName: landmarkData[0].category.rawValue,
            items: Array(landmarkData.prefix(4))
        )
    }
}
#endif
