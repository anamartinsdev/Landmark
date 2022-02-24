//
//  CircleImage.swift
//  Landmarks
//
//  Created by Ana Carolina Martins Pessoa on 23/02/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white)
    }
            .shadow(radius: 7)
}
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
