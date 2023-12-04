//
//  Constants.swift
//  college-scorecard
//
//  Created by christopher conyersIV on 12/2/23.
//

import Foundation

struct Constants {
    
    static var API_KEY = "tm10FeQPFFBltVEACrjTbNbe7NgwGOcvfbhjrfma"
    static var FIELDS = "id,school.name,latest.student.size,school.school_url,latest.admissions.sat_scores.average.overall,school.faculty_salary,latest.cost.attendance.academic_year"
    static var API_URL = "https://api.data.gov/ed/collegescorecard/v1/schools.json?school.degrees_awarded.predominant=2,3&_fields=\(Constants.FIELDS)&api_key=\(Constants.API_KEY)"
    static var CollegeCell_ID = "CollegeCell"
    
    static var genImage = "https://images.squarespace-cdn.com/content/v1/546119bae4b085cc73a9bff6/c65a8641-e64c-4f4b-8d8e-6926f45246c3/BC+Bapst+Library.jpeg"
    
    static var genImage2 = "https://www.liberalartscolleges.com/wp-content/uploads/2015/07/Smith-College.jpg"
}
