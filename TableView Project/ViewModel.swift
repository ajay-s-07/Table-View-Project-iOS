//
//  ViewModel.swift
//  Sample2
//
//  Created by Ajay Sarkate on 26/07/23.
//

import UIKit

class ViewModel {
    func loadMusicData() {
        let string = "https://itunes.apple.com/search?term=taylor+swift&entity=song"
        
        guard let url = URL(string: string) else { return }
        
        URLSession.shared.dataTask(with: url) { data, resp, err in
            if let data = data {
                do{
                    print(String(data: data, encoding: .utf8)!)
                }
                catch {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
}