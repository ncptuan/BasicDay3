//
//  NotificationController.swift
//  Basic3
//
//  Created by Mac on 04/06/2021.
//

import UIKit

class NotificationController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailSC = segue.destination as! DetailViewController
        let helloStr = "Connect from Notication"
        if helloStr.isEmpty == false {
            detailSC.displayUser = helloStr
        }
    }


}
