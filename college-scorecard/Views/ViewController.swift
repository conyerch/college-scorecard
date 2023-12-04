//
//  ViewController.swift
//  college-scorecard
//
//  Created by christopher conyersIV on 12/2/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDel {
    
    @IBOutlet weak var tableView: UITableView!
    
    var model = Model()
    var colleges = [Schools]()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set self to data source and delegate
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
        model.delegate = self
        model.getSchools()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colleges.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CollegeCell_ID, for: indexPath) as! CollegeTableViewCell
        
        // Config cell with data
        
        let school = self.colleges[indexPath.row]
        
        cell.setCell(school)
        // return
        
        //cell.setNeedsLayout() //invalidate current layout
        //cell.layoutIfNeeded() //update immediately
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func getSchools(_ schools: [Schools]) {
        self.colleges = schools
        
        tableView.reloadData()
    }


}

