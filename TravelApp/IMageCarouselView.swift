//
//  IMageCarouselView.swift
//  TravelApp
//
//  Created by user on 12/15/23.
//

import SwiftUI

struct ImageCarouselView: View {
    @State private var selectedImageIndex = 0
    var images: [String]

    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $selectedImageIndex) {
                ForEach(0..<images.count, id: \.self) { index in
                    Image(images[index])
                        .resizable()
                        .scaledToFill()
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(height: 280)
            .clipped()

            HStack(spacing: 8) {
                ForEach(0..<images.count, id: \.self) { index in
                    Circle()
                        .fill(index == selectedImageIndex ? Color("accentColor") : Color("textColor"))
                        .frame(width: 8, height: 8)
                }
            }
            .padding(.vertical, 8)
        }
        .background(Color("background"))
        .cornerRadius(16)
        .shadow(radius: 5)
    }
}

// Usage Example
#Preview {
    ImageCarouselView(images: ["image1", "image2", "image3"])
}

