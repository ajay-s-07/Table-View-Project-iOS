//
//  sampleTableView.swift
//  Sample2
//
//  Created by Ajay Sarkate on 27/07/23.
//

import UIKit

class TableViewController: UITableViewController, UISearchBarDelegate {
    
    let fetchMusic = ViewModel()
    
    override init(style: UITableView.Style) {
        super.init(style: style)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        tableView.register(TableCell.self, forCellReuseIdentifier: "Id")
        fetchMusic.loadMusicData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addSearchBar()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Id", for: indexPath) as! TableCell
        cell.label.text = "Song Title \(indexPath.row+1)"
        cell.backgroundColor = .systemGray5
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func addSearchBar() {
        let searchBar = UISearchBar(frame: CGRect(origin: .zero, size: CGSize(width: view.frame.width, height: 60)))
        searchBar.placeholder = "Search"
        searchBar.delegate = self
        searchBar.isTranslucent = true
        tableView.tableHeaderView = searchBar
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
}
