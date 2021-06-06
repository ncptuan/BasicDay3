//
//  IndexHeader.swift
//  Basic3
//
//  Created by Mac on 04/06/2021.
//

import Foundation
import UIKit

class IndexHeader: UINavigationItem {

    override func layoutSubviews() {
        super.layoutSubviews();
        navigationController?.navigationBar.barTintColor = .yellow
        navigationController?.navigationBar.isTranslucent = false
    }


}
