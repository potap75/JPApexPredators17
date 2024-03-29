//
//  ContentView.swift
//  JPApexPredators17
//
//  Created by Roman Potapov on 3/6/24.
//

import SwiftUI

struct ContentView: View {
    
    let predators = Predators()
    @State var searchText = ""
    var filteredDinos: [ApexPredator] {
        return predators.search(for: searchText)
    }
    
    var body: some View {
        NavigationStack {
            List(filteredDinos) { predator in
                NavigationLink {
                    
                    Image(predator.image)
                        .resizable()
                        .scaledToFit()
                } label: {
                    
                    
                    HStack {
                        //dinosaur image
                        
                        Image(predator.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                            .shadow(color: .white,radius: 1)
                        
                        VStack(alignment: .leading) {
                            
                            // Name
                            Text(predator.name)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            // Type
                            Text(predator.type.rawValue.capitalized)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.horizontal, 13)
                                .padding(.vertical, 5)
                                .background(predator.type.background)
                                .clipShape(.capsule)
                            
                        }
                    }
                }
            }
            .navigationTitle("Apex Predators")
            .searchable(text: $searchText)
            .autocorrectionDisabled()
            .animation(.default, value: searchText)
        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
    }

#Preview {
    ContentView()
}
