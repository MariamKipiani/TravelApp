//
//  HotwlsView.swift
//  TravelApp
//
//  Created by user on 12/15/23.
//

import SwiftUI

struct HotelsView: View {
    var destination: Destination
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack(spacing: 16) {
            Image("hotel")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 230)
                .clipped()
            
            List(destination.hotels, id: \.self) { hotel in
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "building.fill")
                            .foregroundColor(Color("textColor"))
                            .font(.title)
                        
                        VStack(alignment: .leading) {
                            Text(hotel.name)
                                .font(.headline)
                                .foregroundColor(.primary)
                            
                            Text(hotel.description)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .shadow(radius: 3)
                }
            }
            .listStyle(InsetGroupedListStyle())
            
            Button(action: {
                path = NavigationPath()
            }) {
                Label("Go To HomePage", systemImage: "house.fill")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .background(Color("textColor"))
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }
            .padding()
            
            Spacer()
        }
        .background(Color(.systemBackground))
        .ignoresSafeArea()
    }
}

#Preview {
    HotelsView(destination: previewExample, path: .constant(NavigationPath()))
}

