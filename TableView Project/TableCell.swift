//
//  TableCell.swift
//  Sample2
//
//  Created by Ajay Sarkate on 27/07/23.
//

import UIKit

class TableCell: UITableViewCell {
    
    let imgView = UIImageView()
    let label = UILabel()
    let label2 = UILabel()
    
    
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
        
        
        label.text = "Hello World!"
        label.font = .boldSystemFont(ofSize: 24)
        label.textAlignment = .left
        
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        label.leadingAnchor.constraint(equalTo: imgView.trailingAnchor, constant: 10).isActive = true
        label.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        label.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        label2.text = "Artist Name"
        label2.font = .systemFont(ofSize: 16)
        label2.textAlignment = .left
        
        addSubview(label2)
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.topAnchor.constraint(equalTo: label.bottomAnchor).isActive = true
        label2.leadingAnchor.constraint(equalTo: imgView.trailingAnchor, constant: 10).isActive = true
        label2.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        label2.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



