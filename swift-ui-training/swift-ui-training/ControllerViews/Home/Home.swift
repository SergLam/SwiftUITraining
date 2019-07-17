//
//  Home.swift
//  swift-ui-training
//
//  Created by Serg Liamthev on 6/10/19.
//  Copyright © 2019 serglam. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    
    var categories: [String: [Landmark]] {
        .init(
            grouping: landmarkData,
            by: { $0.category.rawValue }
        )
    }
    
    
    var featured: [Landmark] {
        landmarkData.filter { $0.isFeatured }
    }
    
    var body: some View {
        NavigationView {
            List {
                FeaturedLandmarks(landmarks: featured)
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                ForEach(categories.keys.sorted().identified(by: \.self)) { key in
                    CategoryRow(categoryName: key, items: self.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
                }
                .navigationBarTitle(Text("Featured"))
                .navigationBarItems(trailing:
                    PresentationButton(
                        Image(systemName: "person.crop.circle")
                            .imageScale(.large)
                            .accessibility(label: Text("User Profile"))
                            .padding(),
                        destination: ProfileHost()
                    )
            )
        }
    }
}

#if DEBUG
struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
#endif
