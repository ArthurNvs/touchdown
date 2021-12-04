//
//  Shop.swift
//  Touchdown
//
//  Created by Arthur Neves on 04/12/21.
//

import Foundation

class Shop: ObservableObject {
  //@Published: any changes triggers view update 
  @Published var showinProduct = false
  @Published var selectedProduct: Product?
}
