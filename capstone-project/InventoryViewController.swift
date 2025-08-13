//
//  InventoryViewController.swift
//  capstone-project
//
//  Created by Aditi Deshmukh on 8/12/25.
//

import Foundation
import UIKit

class InventoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Inventory"
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ItemStore.shared.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        let item = ItemStore.shared.items[indexPath.row]
        cell.textLabel?.text = "\(item.type.rawValue): \(item.name)"
        cell.detailTextLabel?.text = "Location: \(item.location)"
        return cell
    }
}
