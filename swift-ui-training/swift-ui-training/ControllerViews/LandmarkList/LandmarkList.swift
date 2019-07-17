//
//  LandmarkList.swift
//  swift-ui-training
//
//  Created by Serg Liamthev on 6/8/19.
//  Copyright © 2019 serglam. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Show Favorites")
                }
                
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                    }
                    .navigationBarTitle(Text("Landmarks"))
            }
        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
        .environmentObject(UserData())
    }
}
#endif
