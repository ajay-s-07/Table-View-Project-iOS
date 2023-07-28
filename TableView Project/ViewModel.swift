//
//  ViewModel.swift
//  Sample2
//
//  Created by Ajay Sarkate on 26/07/23.
//

import UIKit

class ViewModel {
    func loadMusicData(string: String, onCompletion: @escaping ([Result]) -> () ) {
                
        guard let url = URL(string: string) else { return }
        
        URLSession.shared.dataTask(with: url) { data, resp, err in
            if let data = data {
                do{
                    let results = try JSONDecoder().decode(SearchResult.self, from: data)
                    onCompletion(results.results)
                }
                catch {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
}
