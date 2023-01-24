//
//  DetailViewController.swift
//  Airport
//
//  Created by User on 17/2/21.
//

import UIKit

class DetailViewController: UIViewController {
    var airport: [String]?
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var fifthLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstLabel.text = airport?[0]
        secondLabel.text = airport?[1]
        thirdLabel.text = airport?[2]
        fourthLabel.text = airport?[3]
        fifthLabel.text = airport?[4]
    }
}
