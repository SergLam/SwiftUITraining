//
//  CircleImage.swift
//  swift-ui-training
//
//  Created by IdeaSoft on 6/7/19.
//  Copyright © 2019 serglam. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    
    var image: Image
    
    var body: some View {
        image
//        .resizable()
//        .aspectRatio(1/1, contentMode: .fill)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.gray, lineWidth: 3.0))
        .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
#endif
