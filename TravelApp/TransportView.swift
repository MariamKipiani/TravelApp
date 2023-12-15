//
//  TransportView.swift
//  TravelApp
//
//  Created by user on 12/15/23.
//

import SwiftUI

struct TransportView: View {
    var destination: Destination
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack(spacing: 16) {
            Image("public-transport")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 230)
                .clipped()
            
            List(destination.transport, id: \.self) { transport in
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "bus")
                            .foregroundColor(Color("textColor"))
                            .font(.title)
                        
                        VStack(alignment: .leading, spacing: 2) {
                            Text(transport.name)
                                .font(.headline)
                                .foregroundColor(.primary)
                            
                            Text(transport.description)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            
                            Text(transport.price)
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(Color("textColor"))
                        }
                        
                        Spacer()
                    }
                    .padding(.vertical, 5)
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
    TransportView(destination: previewExample, path: .constant(NavigationPath()))
}
