//
//  MainViewController.swift
//  FavoriteSuicidePlaces
//
//  Created by Maxim Spiridonov on 08/05/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {

    
    var placesName = ["Миллениум", "Двойка",
                      "Физфак", "Лазурные небеса",
                      "Трасса М7", "Чаша", "Корстон"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

  
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return placesName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        cell.nameLabel.text = placesName[indexPath.row]
        cell.imageOfPlace.image = UIImage(named: "suicide_booth")
        cell.imageOfPlace.layer.cornerRadius = cell.frame.size.height / 10
        cell.imageOfPlace.clipsToBounds = true

        return cell
    }
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
