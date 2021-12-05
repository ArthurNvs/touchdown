//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Arthur Neves on 04/12/21.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
  @State private var counter = 0
  
  var body: some View {
    HStack(alignment: .center, spacing: 6) {
      Button(action: {
        if counter > 0 {
          feedback.impactOccurred()
          counter -= 1
        }
      }) {
        Image(systemName: "minus.circle")
      }
      
      Text("\(counter)")
        .fontWeight(.semibold)
        .frame(minWidth: 36)
      
      Button(action:{
        feedback.impactOccurred()
        counter += 1
      }) {
        Image(systemName: "plus.circle")
      }
      
      Spacer()
      
      Button(action:{
        feedback.impactOccurred()
      }) {
        Image(systemName: "heart.circle")
          .foregroundColor(.pink)
      }
    } //: HStack
    .font(.system(.title, design: .rounded))
    .foregroundColor(.black)
    .imageScale(.large)
  }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
  static var previews: some View {
    QuantityFavouriteDetailView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
