//
//  NetworkRequest.swift
//  CardsHolder
//
//  Created by Павел Яковенко on 10.05.2023.
//

import Foundation
import UIKit

class NetworkRequest {
    
    static let shared = NetworkRequest()
    
    private init(){}
    
    
    func requestData(urlString: String, completion: @escaping (Result<Data, Error>)-> Void) {
//        let urlString = "http://dev.bonusmoney.pro/mobileapp/getAllCompanies"

        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                if let error = error {
                    completion(.failure(error))
                    return
                }
                guard let data = data else { return }
                completion(.success(data))
            }
        }
        .resume()
    }
}
