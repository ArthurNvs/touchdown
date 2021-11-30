//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Arthur Neves on 30/11/21.
//

import Foundation

extension Bundle {
  func decode<T: Codable>(_ file: String) -> T{
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("Failed to locate \(file) in bundle.")
    }
    
    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed to load data from \(file).")
    }
    
    let decoder = JSONDecoder()
    
    guard let decodedData = try? decoder.decode(T.self, from: data) else {
      fatalError("Failed to parse \(file) as \(T.self).")
    }
    
    return decodedData
  }
}
