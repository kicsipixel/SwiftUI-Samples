//
//  ContentView.swift
//  Sidebar
//
//  Created by Szabolcs Toth on 22/10/2019.
//  Copyright © 2019 purzelbaum.hu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ListView()
            DetailView()
        }
        .frame(width: 600, height: 300)
        .navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListView: View {
    var body: some View {
            List(weatherData) { weather in
                NavigationLink(destination: DetailView(selectedRow: weather.id)) {
                    ListViewRow(weather: weather)
                }
            }
            .frame(maxWidth: 150, maxHeight: 300)
    }
}

struct DetailView: View {
    var selectedRow: Int = 0
    
    var body: some View {
        VStack {
            Image(selectedRow == 0 ? "" : filterData(id: selectedRow)[0].icon)
            Text(selectedRow == 0 ? "Choose an icon on the left side" : filterData(id: selectedRow)[0].description)
        }
    .frame(maxWidth: 450, maxHeight: 300)
    }
}
