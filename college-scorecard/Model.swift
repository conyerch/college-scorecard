//
//  Model.swift
//  college-scorecard
//
//  Created by christopher conyersIV on 12/2/23.
//

import Foundation


class Model {
    
    func getSchools() {
        
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            if error != nil || data == nil {
                return
            }
            
            // parse the data

        }
        
        dataTask.resume()
            
        }
    }
