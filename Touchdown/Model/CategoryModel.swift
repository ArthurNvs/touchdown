//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Arthur Neves on 01/12/21.
//

import Foundation

struct Category: Codable, Identifiable {
  let id: Int
  let name: String
  let image: String
}
