//
//  CircleView.swift
//  Landmarks
//
//  Created by Camilo on 10/24/22.
//

import SwiftUI

struct CircleView: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 3)
            }
            .shadow(radius: 20)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(image: Image("Floridablanca"))
    }
}
