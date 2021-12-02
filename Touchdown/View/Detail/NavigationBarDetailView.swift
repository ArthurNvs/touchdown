//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Arthur Neves on 02/12/21.
//

import SwiftUI

struct NavigationBarDetailView: View {
  var body: some View {
    HStack {
      Button(action: {}) {
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
      .previewLayout(.sizeThatFits)
      .padding()
      .background(Color.gray)
  }
}
