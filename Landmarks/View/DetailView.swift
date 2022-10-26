//
//  DetailView.swift
//  Landmarks
//
//  Created by Camilo on 10/25/22.
//

import SwiftUI

struct DetailView: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            
            HStack {
                Text(landmark.park)
                    .font(.title)
                Spacer()
            }
            HStack {
                Text(landmark.name)
                Spacer()
                Text(landmark.state)
            }
            .font(.title3)
            .padding(.bottom, 5)
            
            Divider()
            
            Text("About \(landmark.park)")
                .frame(width: 370, alignment: .leading)
                .padding(.top, 5)
                .font(.title3)
            HStack {
                Text(landmark.description)
                    .font(.body)
                    .padding(.top, 5)
            }
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(landmark: landmarks[0])
    }
}
