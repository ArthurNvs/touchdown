//
//  RatingsSizeDetailView.swift
//  Touchdown
//
//  Created by Arthur Neves on 03/12/21.
//

import SwiftUI

struct RatingsSizeDetailView: View {
  var body: some View {
    HStack(alignment: .top, spacing: 3) {
      VStack(alignment: .leading, spacing: 3) {
        Text("Ratings")
          .font(.footnote)
          .fontWeight(.semibold)
          .foregroundColor(colorGray)
        
        HStack(alignment: .center, spacing: 3) {
          ForEach(1...5, id: \.self) { item in
            Button(action: {}) {
              Image(systemName: "star.fill")
                .frame(width: 28, height: 28, alignment: .center)
                .background(colorGray.cornerRadius(5))
                .foregroundColor(.white)
            }
          }
        } //: HStack
      } //: VStack
      
      Spacer()
      
      VStack(alignment: .trailing, spacing: 3) {
        Text("Sizes")
          .font(.footnote)
          .fontWeight(.semibold)
          .foregroundColor(colorGray)
      }
    } //: HStack
  }
}

struct RatingsSizeDetailView_Previews: PreviewProvider {
  static var previews: some View {
    RatingsSizeDetailView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
