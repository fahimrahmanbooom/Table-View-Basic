//
//  ViewController.swift
//  Table View
//
//  Created by Fahim Rahman on 24/11/19.
//  Copyright © 2019 Fahim Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var customTableView: UITableView!
    
    let nameList:[String]? = ["Bangladesh","Canada","America","China","Pakistan"]
    
    let foodList:[String]? = ["French Fry","Chicken Fry","Kabab","Biriyani"]
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return nameList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell: customTableViewCell = self.customTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! customTableViewCell
        
        if   indexPath.row < foodList?.count ?? 0 {
            cell.middleLabel.text = foodList?[indexPath.row]
        }
        if   indexPath.row < nameList?.count ?? 0 {
            cell.LeftLabel.text = nameList?[indexPath.row]
        }
        
            return cell
    }
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
        customTableView.dataSource = self
        customTableView.delegate = self
        // Do any additional setup after loading the view.
    }
}
