//
//  ViewController.swift
//  TableView Project
//
//  Created by Ajay Sarkate on 28/07/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tableViewController = TableViewController(style: .plain)
        let tableView = tableViewController.view!
        
        view.addSubview(tableView)
        addChild(tableViewController)
        tableViewController.didMove(toParent: self)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

