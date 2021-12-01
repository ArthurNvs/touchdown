//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Arthur Neves on 01/12/21.
//

import SwiftUI

struct ProductItemView: View {
  let product: Product
  
  var body: some View {
    // MARK: - Photo
    VStack(alignment: .leading, spacing: 6, content: {
      ZStack {
        Image(product.image)
          .resizable()
          .scaledToFit()
          .padding(10)
      } //: ZStack
      .background(Color(red: product.red, green: product.green, blue: product.blue))
      .cornerRadius(12)
      
      // MARK: - Name
      Text(product.name)
        .font(.title3)
        .fontWeight(.black)
      
      // MARK: - Price
      Text(product.formattedPrice)
        .fontWeight(.semibold)
        .foregroundColor(.gray)
    }) //: VStack
  }
}

struct ProductItemView_Previews: PreviewProvider {
  static var previews: some View {
    ProductItemView(product: products[0])
      .previewLayout(.fixed(width: 200, height: 300))
      .padding()
      .background(colorBackground)
  }
}
