//
//  ContentView.swift
//  WellsFargoInterview
//
//  Created by Consultant on 8/4/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        
        VStack {
            Text(self.viewModel.weatherInfo?.product ?? "Missing Info")
                .accessibilityLabel("Weather Product Title: \(self.viewModel.weatherInfo?.product ?? "Missing Info")")
                .padding()
            List {
                ForEach(self.viewModel.weatherInfo?.dataseries ?? [], id: \.self) { weatherData in
                    
                    Text("cloudcover: \(weatherData.cloudcover), WindDirection: \(weatherData.windInfo.direction)")
                    
                }
            }
            .padding()
        }/*.onAppear {
            self.viewModel.fetchModelInfo()
        }*/
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
