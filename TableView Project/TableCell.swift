//
//  TableCell.swift
//  Sample2
//
//  Created by Ajay Sarkate on 27/07/23.
//

import UIKit

class TableCell: UITableViewCell {
    
    let imgView = UIImageView()
    let musicName = UILabel()
    let artistName = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .white
        
        imgView.backgroundColor = .systemBlue
        addSubview(imgView)
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        imgView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        imgView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        imgView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        
        musicName.text = "Hello World!"
        musicName.font = .boldSystemFont(ofSize: 24)
        musicName.textAlignment = .left
        
        addSubview(musicName)
        musicName.translatesAutoresizingMaskIntoConstraints = false
        musicName.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        musicName.leadingAnchor.constraint(equalTo: imgView.trailingAnchor, constant: 10).isActive = true
        musicName.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        musicName.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        artistName.text = "Artist Name"
        artistName.font = .systemFont(ofSize: 16)
        artistName.textAlignment = .left
        
        addSubview(artistName)
        artistName.translatesAutoresizingMaskIntoConstraints = false
        artistName.topAnchor.constraint(equalTo: musicName.bottomAnchor).isActive = true
        artistName.leadingAnchor.constraint(equalTo: imgView.trailingAnchor, constant: 10).isActive = true
        artistName.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        artistName.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        
    }
    
    func loadImage(from urlString: String) {
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, resp, err in
            if let data = data {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self.imgView.image = image
                    }
                }
            }
        }.resume()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



