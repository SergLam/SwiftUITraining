//
//  FeaturedLandmarks.swift
//  swift-ui-training
//
//  Created by Serg Liamthev on 6/10/19.
//  Copyright © 2019 serglam. All rights reserved.
//

import SwiftUI

struct FeaturedLandmarks : View {
    
    var landmarks: [Landmark]
    
    var body: some View {
        landmarks[0].image(forSize: 250).resizable()
    }
}

#if DEBUG
struct FeaturedLandmarks_Previews : PreviewProvider {
    static var previews: some View {
        FeaturedLandmarks(landmarks: landmarkData.filter{$0.isFeatured} )
    }
}
#endif
