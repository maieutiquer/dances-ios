//
//  Dance.swift
//  dances
//
//  Created by personal on 29.12.23.
//

import Foundation

struct Dance: Decodable, Identifiable {
    let id: Int
    let name: String
    let region: String
    let isActive: Bool
}
