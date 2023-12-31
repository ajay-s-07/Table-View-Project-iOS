//
//  sampleTableView.swift
//  Sample2
//
//  Created by Ajay Sarkate on 27/07/23.
//

import UIKit

class TableViewController: UITableViewController, UISearchBarDelegate {
    
    let viewModel = ViewModel()
    var results = [Result]()
    let string = "https://itunes.apple.com/search?term=taylor+swift&entity=song"

    
    override init(style: UITableView.Style) {
        super.init(style: style)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        tableView.register(TableCell.self, forCellReuseIdentifier: "Id")
        viewModel.loadMusicData(string: string) { results in
            self.results = results
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addSearchBar()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Id", for: indexPath) as! TableCell
        
        let result = results[indexPath.item]
        
        cell.musicName.text = result.trackName
        cell.artistName.text = result.artistName
        cell.loadImage(from: result.artworkUrl100)
        
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
        searchText.replacingOccurrences(of: " ", with: "+")
        let searchTerm = "https://itunes.apple.com/search?term=\(searchText)&entity=song"
        viewModel.loadMusicData(string: searchTerm) { results in
            self.results = results
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
}
