//
//  NetworkDataFetch.swift
//  CardsHolder
//
//  Created by Павел Яковенко on 10.05.2023.
//

import Foundation

class NetworkDataFetch {
    
    static let shared = NetworkDataFetch()
    
    private init() {}
    
    func fetchCard(urlString: String, response: @escaping (CardModel?, Error?)-> Void) {
        
        NetworkRequest.shared.requestData(urlString: urlString) { result in
            switch result {
                
            case .success(let data):
                do {
                    let cards = try JSONDecoder().decode(CardModel.self, from: data)
                    response(cards, nil)
                } catch let jsonError {
                        print("Failed to decode JSON", jsonError)
                }
            case .failure(let error):
                print("Error recived requesting data: \(error.localizedDescription)")
                response(nil, error)
            }
        }
    }
}
