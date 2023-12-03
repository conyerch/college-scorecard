//
//  ViewController.swift
//  college-scorecard
//
//  Created by christopher conyersIV on 12/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getSchools()
    }


}

