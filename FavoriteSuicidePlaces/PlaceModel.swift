//
//  PlaceModel.swift
//  FavoriteSuicidePlaces
//
//  Created by Maxim Spiridonov on 08/05/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit

struct Place {
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var placeImage: String?
    static func getPlaces() -> [Place] {
        
        let place = [Place(name: "Миллениум", location: "Kazan", type: "Утопление", image: nil, placeImage: "suicide_booth")] 
        
        return place
    }
}
