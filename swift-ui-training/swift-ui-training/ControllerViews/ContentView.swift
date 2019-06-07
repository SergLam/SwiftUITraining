//
//  ContentView.swift
//  swift-ui-training
//
//  Created by Serg Liamthev on 6/5/19.
//  Copyright © 2019 serglam. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State var toogleState: Bool = true
    
    var body: some View {
        NavigationView {
            Toggle(isOn: $toogleState) {
                Text("Test").font(.title).color(.green)
                }.navigationBarTitle(
                    Text("Tesing Swift UI")
                ).navigationBarItems(leading: Text("Leading").font(.body).color(.blue),
                                     trailing: Text("Trailing").font(.body).color(.blue))
            Text("Hello World")
            CircleImage()
        }
    }

}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
