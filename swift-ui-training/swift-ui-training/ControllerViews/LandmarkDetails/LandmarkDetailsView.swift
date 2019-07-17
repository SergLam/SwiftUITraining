//
//  ContentView.swift
//  swift-ui-training
//
//  Created by Serg Liamthev on 6/5/19.
//  Copyright © 2019 serglam. All rights reserved.
//

import SwiftUI

struct LandmarkDetailsView: View {
    
    var landmark: Landmark
    
    var body: some View {
        LandmarkDetail(landmark: landmark)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetailsView(landmark: landmarkData[0])
    }
}
#endif
