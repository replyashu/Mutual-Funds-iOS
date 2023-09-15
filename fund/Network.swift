//
//  Network.swift
//  fund
//
//  Created by Ashutosh Sharma on 16/09/23.
//

import Foundation

class Network: ObservableObject {
        @Published var mutualFunds: [MutualFund] = []
    
    func getMutualFunds() {
        
        guard let url =  URL(string: "http://localhost:8024/fetch-mutual-funds-names")
        else {
            fatalError("Missing URL")
        }
        
        let urlRequest = URLRequest(url: url)
        
        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
                if let error = error {
                    print("Request error: ", error)
                    return
                }

                guard let response = response as? HTTPURLResponse else { return }

                if response.statusCode == 200 {
                    guard let data = data else { return }
                    DispatchQueue.main.async {
                        do {
                            let decodedUsers = try JSONDecoder().decode([MutualFund].self, from: data)
                            self.mutualFunds = decodedUsers
                        } catch let error {
                            print("Error decoding: ", error)
                        }
                    }
                }
            }

            dataTask.resume()
    }

}

