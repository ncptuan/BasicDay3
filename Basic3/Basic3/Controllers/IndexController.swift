//
//  ViewController.swift
//  Basic3
//
//  Created by Mac on 04/06/2021.
//

import UIKit

class IndexController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAccount: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let image = UIImage(named: "Header")
        if let navBackgroundImage = image?.resizableImage(withCapInsets: .zero, resizingMode: .stretch) {
            navigationController?.navigationBar.setBackgroundImage(navBackgroundImage, for: .default)
            let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            navigationController?.navigationBar.titleTextAttributes = textAttributes
        }
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailSC = segue.destination as! DetailViewController
        let helloStr = getHelloStr()
        if helloStr.isEmpty == false {
            detailSC.displayUser = helloStr
        }
    }
    
    func getHelloStr() -> String {
        guard let fullname = txtName.text?.trimmingCharacters(in: .whitespacesAndNewlines) else { return "" }
        guard let account = txtAccount.text?.trimmingCharacters(in: .whitespacesAndNewlines) else { return "" }
        if fullname.isEmpty && account.isEmpty {
            return ""
        }
        
        var infoStr = "Hello: "
        if fullname.isEmpty {
            infoStr += account
        } else if account.isEmpty {
            infoStr += fullname
        } else {
            infoStr += "\(fullname) - \(account)"
        }
        
        return infoStr
    }


}

