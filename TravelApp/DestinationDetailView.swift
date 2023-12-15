//
//  DestinationDetailView.swift
//  TravelApp
//
//  Created by user on 12/15/23.
//

import SwiftUI

struct DestinationDetailView: View {
    var destination: Destination
    @State private var selectedImageIndex = 0
    @Binding var path: NavigationPath
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ImageCarouselView(images: destination.generalImages)
                    .frame(height: 200)
                
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        VStackTextView(
                            title: destination.cityName,
                            subTitle: destination.country,
                            titleFont: 21,
                            subTitleFont: 14,
                            alignmentAxe: .leading,
                            titleWeight: .bold,
                            subTitleWeight: .medium
                        )
                        
                        Spacer()
                        
                        VStackTextView(
                            title: "25$",
                            subTitle: "Per Person",
                            titleFont: 21,
                            subTitleFont: 14,
                            alignmentAxe: .trailing,
                            titleWeight: .bold,
                            subTitleWeight: .medium
                        )
                    }
                    
                    Text(destination.description)
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundStyle(Color("textColor"))
                }
                .padding(.horizontal, 22)
                
                VStack(spacing: 20) {
                    NavigationLink(destination: TransportView(destination: destination, path: $path)) {
                        CustomButtonView(
                            width: UIScreen.main.bounds.width - 44,
                            title: "Transport",
                            systemImageName: "bus",
                            color: Color("textColor")
                        )
                    }
                    
                    NavigationLink(destination: MustSeeView(destination: destination, path: $path)) {
                        CustomButtonView(
                            width: UIScreen.main.bounds.width - 44,
                            title: "Must See",
                            systemImageName: "building.columns",
                            color: Color(red: 0, green: 0.5, blue: 0.98)
                        )
                    }
                    
                    NavigationLink(destination: HotelsView(destination: destination, path: $path)) {
                        CustomButtonView(
                            width: UIScreen.main.bounds.width - 44,
                            title: "Hotel",
                            systemImageName: "building.fill",
                            color: Color(red: 0.33, green: 0.59, blue: 1)
                        )
                    }
                }
                .padding(.horizontal, 22)
                
                Spacer()
            }
            .background(Color.white)
            .navigationBarTitle(destination.cityName, displayMode: .inline)
            .padding(.top, 18)
            .padding(.bottom, 20)
        }
        .background(Color(red: 0.9, green: 0.97, blue: 1))
        .edgesIgnoringSafeArea(.top)
    }
}

struct DestinationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationDetailView(destination: previewExample, path: .constant(NavigationPath()))
    }
}
