//
//  DetailViewController.swift
//  college-scorecard
//
//  Created by christopher conyersIV on 12/5/23.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var satLabel: UILabel!
    
    
    @IBOutlet weak var webView: WKWebView!
    
    
    @IBOutlet weak var textView: UITextView!
    
    var school: Schools?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        guard school != nil else {
            return
        }
        
        // clear the fields
        
        titleLabel.text = ""
        satLabel.text = ""
        textView.text = ""
        
        // create the URL
        
        // Load URL into Webview
        
        // Set school name
        
        // set school SAT
        
        // set school description
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
