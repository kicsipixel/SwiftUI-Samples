//
//  Weather.swift
//  Sidebar
//
//  Created by Szabolcs Toth on 22/10/2019.
//  Copyright © 2019 purzelbaum.hu. All rights reserved.
//

import Foundation
import SwiftUI

class Weather: Identifiable {
    let icon: String
    let description: String
    let id: Int
    
    init(icon: String, description: String, id: Int) {
        self.icon = icon
        self.description = description
        self.id = id
    }
}
