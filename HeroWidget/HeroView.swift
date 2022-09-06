//
//  HeroView.swift
//  HeroWidget
//
//  Created by Alperen Kavuk on 2.09.2022.
//

import SwiftUI

struct HeroView: View {
    
    let hero : Superhero
    var body: some View {
        HStack{
        
            
            CircularI_mageView(image: Image(hero.image)).frame(width: 100, height: 100, alignment: .center)
           Spacer()
            VStack{
                Text(hero.name).font(.largeTitle.bold()).foregroundColor(.blue)
                Text(hero.realName).fontWeight(.bold)
            }.padding()
            Spacer()
        }.frame(width: UIScreen.main.bounds.width,  alignment: .center)
        
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView(hero: batman)
    }
}
