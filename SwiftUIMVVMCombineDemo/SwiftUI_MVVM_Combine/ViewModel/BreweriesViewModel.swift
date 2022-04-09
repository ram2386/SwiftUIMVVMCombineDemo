//
//  BreweriesViewModel.swift
//  SwiftUI_MVVM_Combine
//
//  Created by Ramkrishna Sharma on 08/04/22.
//

import Combine
import SwiftUI

class BreweriesViewModel: ObservableObject {
    private let url = "https://api.openbrewerydb.org/breweries"
    private var task = Set<AnyCancellable>()
    @Published var breweries: [Brewery] = []

    func fetchBreweries() {
        URLSession.shared.dataTaskPublisher(for: URL(string: url)!)
            .map { $0.data}
            .decode(type: [Brewery].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .eraseToAnyPublisher()
            .receive(on: RunLoop.main)
            .assign(to: \BreweriesViewModel.breweries, on: self)
            .store(in: &task)
    }
}
