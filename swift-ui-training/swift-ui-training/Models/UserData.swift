//
//  UserData.swift
//  swift-ui-training
//
//  Created by Serg Liamthev on 6/9/19.
//  Copyright © 2019 serglam. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: BindableObject {
    
    init() {
        didChange = PassthroughSubject()
    }
    
    let didChange: PassthroughSubject<UserData, Never>
    
    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }
    
    var landmarks = landmarkData {
        didSet {
            didChange.send(self)
        }
    }
}
