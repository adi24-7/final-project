//
//  ConfirmationViewController.swift
//  capstone-project
//
//  Created by Aditi Deshmukh on 8/12/25.
//

import Foundation

import UIKit

class ConfirmationViewController: UIViewController {
    
    var itemName: String?
    var location: String?
    
   
    @IBOutlet weak var confirmationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Confirmation"
    }
}
