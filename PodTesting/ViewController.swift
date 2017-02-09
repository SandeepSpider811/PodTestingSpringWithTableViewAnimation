//
//  ViewController.swift
//  PodTesting
//
//  Created by Sierra 4 on 07/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let musicAlbumCovers = ["Album 1", "Album 2", "Album 3", "Album 4", "Album 5", "Album 6", "Album 7", "Album 8", "Album 9", "Album 10", "Album 11", "Album 12"]
    let imageNames = ["1","2","3","4","5","6","7","8","9","10","11","12"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}
//MARK: - TableView Datasources/Delegates
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicAlbumCovers.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell else{
            fatalError()
        }
        cell.imageViewOutlet.image = UIImage(named: imageNames[indexPath.row] + ".jpg")
        cell.lblOutlet.text = musicAlbumCovers[indexPath.row]
        return cell
    }

}

