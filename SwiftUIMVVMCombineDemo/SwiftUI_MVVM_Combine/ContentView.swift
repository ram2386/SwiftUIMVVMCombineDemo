//
//  ContentView.swift
//  SwiftUI_MVVM_Combine
//
//  Created by Ramkrishna Sharma on 06/04/22.
//

import SwiftUI
import Combine

struct ContentView: View {
    var body: some View {
        BreweriesView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone SE (3rd generation)")
    }
}
