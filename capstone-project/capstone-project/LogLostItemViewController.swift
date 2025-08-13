//
//  LogLostItemViewController.swift
//  capstone-project
//
//  Created by Aditi Deshmukh on 8/12/25.
//

import Foundation

import UIKit

class LogLostItemViewController: UIViewController {
    
    
    @IBOutlet weak var itemNameTextField: UITextField!
    
    @IBOutlet weak var locationTextField: UITextField!
    
    
    @IBOutlet weak var itemDescription: UITextField!
    
    @IBOutlet weak var submitTapped: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Log Lost Item"
    }
    
    @IBAction func submitTapped(_ sender: UIButton) {
        guard let itemName = itemNameTextField.text, !itemName.isEmpty,
              let location = locationTextField.text, !location.isEmpty else {
            let alert = UIAlertController(title: "Missing Info",
                                          message: "Please fill out all fields.",
                                          preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
            return
        }
        
        // Add item to shared store
        ItemStore.shared.addItem(name: itemName, location: location, type: .lost)
        
        if let confirmationVC = storyboard?.instantiateViewController(withIdentifier: "ConfirmationVC") as? ConfirmationViewController {
            confirmationVC.itemName = itemName
            confirmationVC.location = location
            navigationController?.pushViewController(confirmationVC, animated: true)
        }
    }
    
    
}
