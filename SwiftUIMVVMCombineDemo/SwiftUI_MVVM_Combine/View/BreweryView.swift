//
//  BreweryView.swift
//  SwiftUI_MVVM_Combine
//
//  Created by Ramkrishna Sharma on 08/04/22.
//

import SwiftUI

struct BreweryView: View {
    private let brewery: Brewery

    init(brewery: Brewery) {
        self.brewery = brewery
    }

    var body: some View {
        HStack {
            Image(uiImage: UIImage(named: "foodIcon")!)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
            VStack(alignment: .leading, spacing: 5) {
                Text(brewery.name ?? "")
                    .font(.system(size: 18))
                    .foregroundColor(Color.blue)
                Text("\(brewery.city ?? "") - \(brewery.street ?? "")")
                    .font(.system(size: 14))
            }.padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 0))
        }
    }
}
