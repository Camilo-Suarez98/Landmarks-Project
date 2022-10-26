//
//  LandmarkDetails.swift
//  Landmarks
//
//  Created by Camilo on 10/26/22.
//

import SwiftUI

struct LandmarkDetails: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
            
            CircleView(image: landmark.image)
                .offset(y: -110)
                .padding(.bottom, -100)
            
            DetailView(landmark: landmark)
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetails_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetails(landmark: landmarks[0])
    }
}
