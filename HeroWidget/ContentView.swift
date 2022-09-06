//
//  ContentView.swift
//  HeroWidget
//
//  Created by Alperen Kavuk on 2.09.2022.
//

import SwiftUI
import WidgetKit
struct ContentView: View {
  @AppStorage("hero", store: UserDefaults(suiteName: "group.com.alperenkavuk.HeroWidget"))
    var heroData : Data = Data()
    let superherArray = [ ironman,batman,spiderman]
    var body: some View {
        VStack{
            ForEach(superherArray){hero in
              //üzerine tıklama algılama
                HeroView(hero: hero).onTapGesture(){
                    saveToDefaults(hero: hero)
                }
                
            }
        }
    }
    func saveToDefaults(hero : Superhero){
        if let heroData = try? JSONEncoder().encode(hero)
        {
            self.heroData = heroData
            print(hero.name)
            WidgetCenter.shared.reloadTimelines(ofKind: "WidgetHero")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
