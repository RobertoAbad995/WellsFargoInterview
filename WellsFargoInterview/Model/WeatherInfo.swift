//
//  WeatherInfo.swift
//  WellsFargoInterview
//
//  Created by Consultant on 8/4/22.
//

import Foundation

struct WeatherInfo: Decodable, Hashable {
    let product: String
    let uniqueInit: String
    let dataseries: [WeatherData]
    
    enum CodingKeys: String, CodingKey {
        case uniqueInit = "init"
        case product, dataseries
    }
}

struct WeatherData: Decodable, Hashable {
    let timepoint: Int
    let cloudcover: Int
    let windInfo: WindInfo
    
    enum CodingKeys: String, CodingKey {
        case windInfo = "wind10m"
        case timepoint, cloudcover
    }
}

struct WindInfo: Decodable, Hashable {
    let direction: String
}






/*
 {
   "product": "astro",
   "init": "2022080412",
   "dataseries": [
     {
       "timepoint": 3,
       "cloudcover": 9,
       "seeing": 7,
       "transparency": 7,
       "lifted_index": -1,
       "rh2m": 13,
       "wind10m": {
         "direction": "E",
         "speed": 3
       },
       "temp2m": 26,
       "prec_type": "rain"
     },
     {
       "timepoint": 6,
       "cloudcover": 9,
       "seeing": 6,
       "transparency": 6,
       "lifted_index": -1,
       "rh2m": 13,
       "wind10m": {
         "direction": "SE",
         "speed": 2
       },
       "temp2m": 26,
       "prec_type": "rain"
     },
     {
       "timepoint": 9,
       "cloudcover": 9,
       "seeing": 7,
       "transparency": 6,
       "lifted_index": -4,
       "rh2m": 13,
       "wind10m": {
         "direction": "S",
         "speed": 2
       },
       "temp2m": 26,
       "prec_type": "rain"
     },
     {
       "timepoint": 12,
       "cloudcover": 9,
       "seeing": 8,
       "transparency": 5,
       "lifted_index": -1,
       "rh2m": 12,
       "wind10m": {
         "direction": "SE",
         "speed": 3
       },
       "temp2m": 26,
       "prec_type": "rain"
     },
     {
       "timepoint": 15,
       "cloudcover": 9,
       "seeing": 8,
       "transparency": 6,
       "lifted_index": -1,
       "rh2m": 13,
       "wind10m": {
         "direction": "E",
         "speed": 2
       },
       "temp2m": 26,
       "prec_type": "rain"
     },
     {
       "timepoint": 18,
       "cloudcover": 9,
       "seeing": 6,
       "transparency": 8,
       "lifted_index": -1,
       "rh2m": 14,
       "wind10m": {
         "direction": "S",
         "speed": 3
       },
       "temp2m": 26,
       "prec_type": "rain"
     },
     {
       "timepoint": 21,
       "cloudcover": 9,
       "seeing": 6,
       "transparency": 6,
       "lifted_index": -1,
       "rh2m": 12,
       "wind10m": {
         "direction": "SE",
         "speed": 2
       },
       "temp2m": 27,
       "prec_type": "rain"
     },
     {
       "timepoint": 24,
       "cloudcover": 9,
       "seeing": 8,
       "transparency": 5,
       "lifted_index": -1,
       "rh2m": 13,
       "wind10m": {
         "direction": "SE",
         "speed": 2
       },
       "temp2m": 27,
       "prec_type": "rain"
     },
     {
       "timepoint": 27,
       "cloudcover": 9,
       "seeing": 8,
       "transparency": 6,
       "lifted_index": -1,
       "rh2m": 13,
       "wind10m": {
         "direction": "SE",
         "speed": 2
       },
       "temp2m": 26,
       "prec_type": "rain"
     },
     {
       "timepoint": 30,
       "cloudcover": 9,
       "seeing": 8,
       "transparency": 6,
       "lifted_index": -1,
       "rh2m": 13,
       "wind10m": {
         "direction": "E",
         "speed": 2
       },
       "temp2m": 26,
       "prec_type": "rain"
     },
     {
       "timepoint": 33,
       "cloudcover": 9,
       "seeing": 8,
       "transparency": 6,
       "lifted_index": -1,
       "rh2m": 13,
       "wind10m": {
         "direction": "E",
         "speed": 2
       },
       "temp2m": 26,
       "prec_type": "rain"
     },
     {
       "timepoint": 36,
       "cloudcover": 9,
       "seeing": 6,
       "transparency": 6,
       "lifted_index": -1,
       "rh2m": 12,
       "wind10m": {
         "direction": "E",
         "speed": 2
       },
       "temp2m": 27,
       "prec_type": "rain"
     },
     {
       "timepoint": 39,
       "cloudcover": 9,
       "seeing": 6,
       "transparency": 4,
       "lifted_index": -4,
       "rh2m": 8,
       "wind10m": {
         "direction": "SE",
         "speed": 3
       },
       "temp2m": 31,
       "prec_type": "rain"
     },
     {
       "timepoint": 42,
       "cloudcover": 8,
       "seeing": 6,
       "transparency": 3,
       "lifted_index": -4,
       "rh2m": 6,
       "wind10m": {
         "direction": "SE",
         "speed": 3
       },
       "temp2m": 33,
       "prec_type": "rain"
     },
     {
       "timepoint": 45,
       "cloudcover": 9,
       "seeing": 6,
       "transparency": 3,
       "lifted_index": -1,
       "rh2m": 6,
       "wind10m": {
         "direction": "S",
         "speed": 3
       },
       "temp2m": 32,
       "prec_type": "rain"
     },
     {
       "timepoint": 48,
       "cloudcover": 9,
       "seeing": 6,
       "transparency": 4,
       "lifted_index": -4,
       "rh2m": 9,
       "wind10m": {
         "direction": "S",
         "speed": 3
       },
       "temp2m": 30,
       "prec_type": "rain"
     },
     {
       "timepoint": 51,
       "cloudcover": 4,
       "seeing": 6,
       "transparency": 4,
       "lifted_index": -1,
       "rh2m": 10,
       "wind10m": {
         "direction": "SW",
         "speed": 2
       },
       "temp2m": 29,
       "prec_type": "none"
     },
     {
       "timepoint": 54,
       "cloudcover": 4,
       "seeing": 7,
       "transparency": 5,
       "lifted_index": -4,
       "rh2m": 11,
       "wind10m": {
         "direction": "SW",
         "speed": 2
       },
       "temp2m": 28,
       "prec_type": "none"
     },
     {
       "timepoint": 57,
       "cloudcover": 2,
       "seeing": 7,
       "transparency": 5,
       "lifted_index": -4,
       "rh2m": 12,
       "wind10m": {
         "direction": "N",
         "speed": 2
       },
       "temp2m": 27,
       "prec_type": "none"
     },
     {
       "timepoint": 60,
       "cloudcover": 3,
       "seeing": 6,
       "transparency": 5,
       "lifted_index": -4,
       "rh2m": 11,
       "wind10m": {
         "direction": "N",
         "speed": 2
       },
       "temp2m": 28,
       "prec_type": "none"
     },
     {
       "timepoint": 63,
       "cloudcover": 4,
       "seeing": 6,
       "transparency": 4,
       "lifted_index": -4,
       "rh2m": 7,
       "wind10m": {
         "direction": "E",
         "speed": 2
       },
       "temp2m": 33,
       "prec_type": "rain"
     },
     {
       "timepoint": 66,
       "cloudcover": 6,
       "seeing": 6,
       "transparency": 3,
       "lifted_index": -4,
       "rh2m": 5,
       "wind10m": {
         "direction": "S",
         "speed": 2
       },
       "temp2m": 35,
       "prec_type": "rain"
     },
     {
       "timepoint": 69,
       "cloudcover": 6,
       "seeing": 6,
       "transparency": 3,
       "lifted_index": -4,
       "rh2m": 5,
       "wind10m": {
         "direction": "E",
         "speed": 2
       },
       "temp2m": 36,
       "prec_type": "rain"
     },
     {
       "timepoint": 72,
       "cloudcover": 7,
       "seeing": 6,
       "transparency": 3,
       "lifted_index": -4,
       "rh2m": 8,
       "wind10m": {
         "direction": "SW",
         "speed": 2
       },
       "temp2m": 33,
       "prec_type": "rain"
     }
   ]
 }
 */


