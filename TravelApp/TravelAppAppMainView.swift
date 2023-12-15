//
//  TravelAppApp.swift
//  TravelApp
//
//  Created by user on 12/14/23.
//

import SwiftUI

struct TravelAppMainView: View {
    
    @EnvironmentObject private var viewModel: TravelAppViewModel
    @State private var path = NavigationPath()
    @State private var showAlert = false
    @State private var currentTip = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                HeaderView()
                    .frame(minHeight: 75)
                
                DestinationScrollView(path: $path, viewModel: viewModel)
                
                HStack {
                    Spacer()
                    Button("Get Travel Tip") {
                        currentTip = viewModel.getRandomTravelTip()
                        showAlert = true
                    }
                    .buttonStyle(TravelButtonStyle())
                    .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("Travel Tip"),
                            message: Text(currentTip),
                            dismissButton: .default(Text("OK"))
                        )
                    }
                    Spacer()
                }
                .padding(24)
                
                Spacer()
            }
        }
        .background(Color(.systemBackground))
        .onAppear {
            viewModel.fetchDestinations()
        }
    }
}

struct TravelButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color("textColor"))
            .foregroundColor(Color.white)
            .cornerRadius(10)
    }
}

struct DestinationScrollView: View {
    @Binding var path: NavigationPath
    var viewModel: TravelAppViewModel
    
    var body: some View {
        NavigationStack(path: $path) {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyVGrid(columns: viewModel.layout) {
                    ForEach(viewModel.destinations) { destination in
                        NavigationLink(
                            destination,
                            label: { TravelCardView(destination: destination) }
                        )
                        .navigationDestination(for: Destination.self) {
                            DestinationDetailView(destination: $0, path: $path)
                        }
                    }
                }
            }
        }
        .padding(24)
        .background(Color(red: 0.9, green: 0.97, blue: 1))
    }
}

struct TravelAppMainView_Previews: PreviewProvider {
    static var previews: some View {
        TravelAppMainView()
            .environmentObject(TravelAppViewModel())
    }
}
