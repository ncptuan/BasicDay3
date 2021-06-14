//
//  DetailViewController.swift
//  Basic3
//
//  Created by Mac on 07/06/2021.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var userLabel: UILabel!
    
    
    var displayUser = "You are not login"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        userLabel.text = "\(displayUser)"
    }
    
    
}
