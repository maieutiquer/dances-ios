//
//  DanceViewModel.swift
//  dances
//
//  Created by personal on 29.12.23.
//

import Foundation

import Combine

class DanceViewModel: ObservableObject {
    @Published var dances: [Dance] = []

    func fetchDances() {
        guard let url = URL(string: "https://dances-api.onrender.com/dances") else {
            print("Invalid URL")
            return
        }

        URLSession.shared.dataTask(with: url) { data, _, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([Dance].self, from: data) {
                    DispatchQueue.main.async {
                        self.dances = decodedResponse
                    }
                    return
                }
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
}
