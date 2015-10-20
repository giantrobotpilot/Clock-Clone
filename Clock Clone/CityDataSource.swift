//
//  CityDataSource.swift
//  Clock Clone
//
//  Created by Andrew Christensen on 10/20/15.
//  Copyright © 2015 Drew. All rights reserved.
//

import UIKit

class CityDataSource: NSObject {

    let cities: [City]
    
    override init() {
        self.cities = [
            City.init(city: "Denver", country: "U.S.A.", CUTOffset: -7),
            City.init(city: "Sydney", country: "Australia", CUTOffset: 10),
            City.init(city: "Anchorage", country: "U.S.A.", CUTOffset: -9)
        ]
        super.init()
    }
}
