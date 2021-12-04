//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Arthur Neves on 04/12/21.
//

import SwiftUI

struct AddToCartDetailView: View {
  var body: some View {
    Button(action:{}) {
      Spacer()
      Text("Add to cart".uppercased())
        .font(.system(.title2, design: .rounded))
        .fontWeight(.bold)
        .foregroundColor(.white)
      Spacer()
    } //"Button
    .padding(15)
    .background(
      Color(
        red: sampleProduct.red,
        green: sampleProduct.green,
        blue: sampleProduct.blue
      )
    )
    .clipShape(Capsule())
  }
}

struct AddToCartDetailView_Previews: PreviewProvider {
  static var previews: some View {
    AddToCartDetailView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
