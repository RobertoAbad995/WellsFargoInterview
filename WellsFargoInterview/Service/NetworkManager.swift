//
//  NetworkManager.swift
//  WellsFargoInterview
//
//  Created by Consultant on 8/4/22.
//

import Foundation
import Combine

protocol NetworkManager {
    func fetchModel<T: Decodable>(urlS: String) -> AnyPublisher<T, NetworkError>
}

class URLSessionManager {
    
    let session: URLSession
    let decoder = JSONDecoder()
    
    init(session: URLSession = URLSession.shared) {
        self.session = session
    }
}

extension URLSessionManager: NetworkManager {
    
    func fetchModel<T>(urlS: String) -> AnyPublisher<T, NetworkError> where T : Decodable {
        
        guard let url = URL(string: urlS) else {
            return Fail(error: NetworkError.urlFailure).eraseToAnyPublisher()
        }
        
        return self.session.dataTaskPublisher(for: url)
            .tryMap { map in
                
                if let hResponse = map.response as? HTTPURLResponse,
                   !(200..<300).contains(hResponse.statusCode) {
                    
                    throw NetworkError.badStatusCode
                }
                return map.data
            }.decode(type: T.self, decoder: self.decoder)
            .mapError { error in
                return NetworkError.other(error)
            }.eraseToAnyPublisher()
    }
}

