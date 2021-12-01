//
//  ProductModel.swift
//  Touchdown
//
//  Created by Arthur Neves on 01/12/21.
//

import Foundation

struct Product: Codable, Identifiable {
  let id: Int
  let name: String
  let image: String
  let price: Int
  let description: String
  let color: [Double]
  
  var red: Double { color[0] }
  var green: Double { color[1] }
  var blue: Double { color[2] }
  
  var formattedPrice: String { "$\(price)" }
}
