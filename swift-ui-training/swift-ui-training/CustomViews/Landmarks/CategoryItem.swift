//
//  CategoryItem.swift
//  swift-ui-training
//
//  Created by Serg Liamthev on 6/10/19.
//  Copyright © 2019 serglam. All rights reserved.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    var body: some View {
        VStack(alignment: .leading) {
            landmark
                .image(forSize: 155)
                .renderingMode(.original)
                .cornerRadius(5)
            Text(landmark.name)
                .color(.primary)
                .font(.caption)
            }
            .padding(.leading, 15)
    }
}

#if DEBUG
struct CategoryItem_Previews : PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: landmarkData[0])
    }
}
#endif
