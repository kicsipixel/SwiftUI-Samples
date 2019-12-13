//
//  Helper.swift
//  Sidebar
//
//  Created by Szabolcs Toth on 22/10/2019.
//  Copyright © 2019 purzelbaum.hu. All rights reserved.
//

import Foundation

func filterData(id: Int) -> [Weather] {
    var filteredArray = [Weather]()
    
    for item in weatherData {
        if item.id == id {
            filteredArray.append(item)
        }
    }
    return filteredArray
}
