//
//  ListViewRow.swift
//  Sidebar
//
//  Created by Szabolcs Toth on 22/10/2019.
//  Copyright © 2019 purzelbaum.hu. All rights reserved.
//

import SwiftUI

struct ListViewRow: View {
    
    var weather: Weather
    
    var body: some View {
        HStack {
            Image(weather.icon)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 30, height: 30)
                .clipped()
            Text(weather.description)
        }
    }
}

struct ListViewRow_Previews: PreviewProvider {
    static var previews: some View {
        ListViewRow(weather: weatherData[1])
    }
}
