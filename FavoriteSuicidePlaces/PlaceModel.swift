//
//  PlaceModel.swift
//  FavoriteSuicidePlaces
//
//  Created by Maxim Spiridonov on 08/05/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import Foundation

struct Place {
    var name: String
    var location: String
    var type: String
    var image: String
    static func getPlaces() -> [Place] {
        
        let place = [Place(name: "Миллениум", location: "Kazan", type: "Утопление", image: "suicide_booth"),
                     Place(name: "Физфак", location: "Kazan", type: "Падение", image: "suicide_booth"),
                     Place(name: "Лазурные небеса", location: "Kazan", type: "Падение", image: "suicide_booth"),
                     Place(name: "Двойка", location: "Kazan", type: "Падение", image: "suicide_booth"),
                     Place(name: "Трасса М7", location: "Kazan", type: "Авария", image: "suicide_booth"),
                     Place(name: "Чаша", location: "Kazan", type: "Утопление", image: "suicide_booth"),
                     Place(name: "Корстон", location: "Kazan", type: "Падение", image: "suicide_booth")]
        
        
        return place
    }
}
