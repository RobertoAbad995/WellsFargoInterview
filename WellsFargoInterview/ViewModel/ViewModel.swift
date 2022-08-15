//
//  ViewModel.swift
//  WellsFargoInterview
//
//  Created by Consultant on 8/4/22.
//

import Foundation
import Combine

class ViewModel: ObservableObject {
    
    let networkManager: NetworkManager
    @Published var weatherInfo: WeatherInfo?
    
    private var subs = Set<AnyCancellable>()
    
    init(networkManager: NetworkManager = URLSessionManager()) {
        self.networkManager = networkManager
        self.fetchModelInfo()
    }
    
    func fetchModelInfo() {
        
        self.networkManager.fetchModel(urlS: "https://www.7timer.info/bin/astro.php?lon=113.2&lat=23.1&ac=0&unit=metric&output=json&tzshift=0")
            .receive(on: DispatchQueue.main)
            .sink { map in
                switch map {
                case .failure(let error):
                    // Consider something with this later
                    print(error)
                default:
                    break
                }
            } receiveValue: { [weak self] (weatherInfo: WeatherInfo) in
                
                self?.weatherInfo = weatherInfo
                
                
            }.store(in: &self.subs)
    }
}
