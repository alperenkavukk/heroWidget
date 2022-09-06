//
//  superHero.swift
//  HeroWidget
//
//  Created by Alperen Kavuk on 2.09.2022.
//

import Foundation

struct Superhero : Identifiable ,Codable{
    var id : String{image}
    let image : String
    let name : String
    let realName : String
    
}

let spiderman = Superhero(image: "spiderman", name: "Spiderman", realName: "Tom Holland")
let ironman = Superhero(image: "ironman", name: "İronman", realName: "Tony Stark")
let batman = Superhero(image: "batman", name: "Batman", realName: "Bruce Wayne")
