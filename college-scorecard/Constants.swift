//
//  Constants.swift
//  college-scorecard
//
//  Created by christopher conyersIV on 12/2/23.
//

import Foundation

struct Constants {
    
    static var API_KEY = "tm10FeQPFFBltVEACrjTbNbe7NgwGOcvfbhjrfma"
    static var FIELDS = "id,school.name,2013.student.size"
    static var API_URL = "https://api.data.gov/ed/collegescorecard/v1/schools.json?school.degrees_awarded.predominant=2,3&_fields=\(Constants.FIELDS)&api_key=\(Constants.API_KEY)"
    
}
