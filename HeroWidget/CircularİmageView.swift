//
//  CircularİmageView.swift
//  HeroWidget
//
//  Created by Alperen Kavuk on 2.09.2022.
//

import SwiftUI

struct CircularI_mageView: View {
    var image : Image
    var body: some View {
        image.resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).overlay(Circle().stroke(Color.blue,lineWidth: 7)).shadow(radius: 15)
    }
}

struct CircularI_mageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularI_mageView(image: Image("batman"))
    }
}
