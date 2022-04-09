//
//  BreweriesView.swift
//  SwiftUI_MVVM_Combine
//
//  Created by Ramkrishna Sharma on 08/04/22.
//

import SwiftUI

struct BreweriesView: View {
    @ObservedObject var viewModel = BreweriesViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.breweries, id: \.self) {
                BreweryView(brewery: $0)
            }.navigationTitle("Breweries")
                .onAppear {
                    self.viewModel.fetchBreweries()
                }
        }
    }
}
