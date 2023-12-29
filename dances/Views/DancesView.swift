//
//  DancesView.swift
//  dances
//
//  Created by personal on 29.12.23.
//
import SwiftUI

struct DancesView: View {
    @StateObject var viewModel = DanceViewModel()

    var body: some View {
        List(viewModel.dances) { dance in
            VStack(alignment: .leading) {
                Text(dance.name)
                    .font(.headline)
                Text(dance.region)
                    .font(.subheadline)
            }
        }
        .onAppear {
            viewModel.fetchDances()
        }
    }
}
