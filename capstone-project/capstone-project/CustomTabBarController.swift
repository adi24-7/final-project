import UIKit

class CustomTabBarController: UITabBarController {
    @IBInspectable var intialIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndex = intialIndex
    }
}

