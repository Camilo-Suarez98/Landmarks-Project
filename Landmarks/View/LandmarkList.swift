//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Camilo on 10/25/22.
//

import SwiftUI

struct LandmarkList: View {
    @State private var isFavoriteOnly = false
    
    var filteredItems: [Landmark] {
        landmarks.filter { landamark in
            (!isFavoriteOnly || landamark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $isFavoriteOnly) {
                    Text("Favorites")
                }
                ForEach(filteredItems) { landmark in
                    NavigationLink {
                        LandmarkDetails(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                        
                    }
                }
                .navigationTitle("Places")
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
