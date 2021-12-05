//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Arthur Neves on 02/12/21.
//

import SwiftUI

struct NavigationBarDetailView: View {
  
  @EnvironmentObject var shop: Shop
  
  var body: some View {
    HStack {
      Button(action: {
        withAnimation(.easeIn) {
          feedback.impactOccurred()
          shop.selectedProduct = nil
          shop.showinProduct = false
        }
      }) {
        Image(systemName: "chevron.left")
          .font(.title)
          .foregroundColor(.white)
      } //: Button
      Spacer()
      
      Button(action: {}) {
        Image(systemName: "cart")
          .font(.title)
          .foregroundColor(.white)
      }
    } //: HStack
  }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationBarDetailView()
      .environmentObject(Shop())
      .previewLayout(.sizeThatFits)
      .padding()
      .background(Color.gray)
  }
}
