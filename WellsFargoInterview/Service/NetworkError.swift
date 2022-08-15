//
//  NetworkError.swift
//  WellsFargoInterview
//
//  Created by Consultant on 8/4/22.
//

import Foundation

enum NetworkError: Error {
    case urlFailure
    case badStatusCode
    case other(Error)
}
