//
//  TapeViewController.swift
//  Project1
//
//  Created by Айк Шатворян on 19.08.2020.
//  Copyright © 2020 Hike Shatvoryan. All rights reserved.
//

import UIKit

class TapeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
private var items: [String] = ["Hello World", "Just DO IT", "Wind Change", "I Like IT", "Whats UP"]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
        let nibs : Array = Bundle.main.loadNibNamed("TapeItem", owner: self, options: nil)!
        let cell:TapeItem = nibs[0] as! TapeItem
        cell.setTitle(title: items[indexPath.row])
        return cell
    }

    @IBOutlet weak var tapeList: UITableView!
    
    
    
    override func viewDidLoad() {
           super.viewDidLoad()
    }
    
    
    
    
}
