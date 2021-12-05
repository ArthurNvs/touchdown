//
//  ContentView.swift
//  Touchdown
//
//  Created by Arthur Neves on 29/11/21.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var shop: Shop
  
  var body: some View {
    ZStack {
      if shop.showinProduct == false && shop.selectedProduct == nil {
        VStack(spacing: 0) {
          NavigationBarView()
            .padding(.horizontal, 15)
            .padding(.bottom)
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .background(Color.white)
            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
          
          ScrollView(.vertical, showsIndicators: false, content: {
            VStack(spacing: 0) {
              FeaturedTabView()
                .frame(height: UIScreen.main.bounds.width / 1.475)
                .padding(.vertical, 20)
              
              CategoryGridView()
              
              TitleView(title: "Helmets")
              
              LazyVGrid(columns: gridLayout, spacing: 15, content: {
                ForEach(products) { product in
                  ProductItemView(product: product)
                    .onTapGesture {
                      feedback.impactOccurred()
                      
                      withAnimation(.easeOut) {
                        shop.selectedProduct = product
                        shop.showinProduct = true
                      }
                    }
                } //: ForEach
              }) //: LazyVGrid
                .padding(15)
              
              TitleView(title: "Brands")
              
              BrandGridView()
              
              FooterView()
                .padding(.horizontal)
            } //: VStack
          }) //: Scroll
        } //: VStack
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
      } else {
        ProductDetailView()
      }
    } //: ZStack
    .ignoresSafeArea(.all, edges: .top)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environmentObject(Shop())
  }
}
