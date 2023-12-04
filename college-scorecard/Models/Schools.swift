//
//  Schools.swift
//  college-scorecard
//
//  Created by christopher conyersIV on 12/2/23.
//

import Foundation

struct Schools: Decodable {
    
    var id = ""
    var schoolName = ""
    var studentSize = ""
    var sat = ""
    var facSalary = ""
    var cost = ""
    var web = ""
    
    // latest.admissions.sat_scores.average.overall,school.faculty_salary,latest.cost.attendance.academic_year"
    
    enum CodingKeys: String, CodingKey {
        
        
        case id = "id"
        case schoolName = "school.name"
        case studentSize = "latest.student.size"
        case sat = "latest.admissions.sat_scores.average.overall"
        case facSalary = "school.faculty_salary"
        case cost = "latest.cost.attendance.academic_year"
        case web = "school.school_url"
        
    }
    
    init (from decoder: Decoder) throws {
        
        print("here1")
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        print("here2")
        
        self.id = try container.decode(String.self, forKey: .id)
        
        print("here3")
        
        self.schoolName = try container.decode(String.self, forKey: .schoolName)
        
        print("here4")
        
        self.studentSize = try container.decode(String.self, forKey: .studentSize)
        
        print("here5")
        
        self.web = try container.decode(String.self, forKey: .web)
        
        print("here6")
        
        self.sat = try container.decode(String.self, forKey: .sat)
        
        self.facSalary = try container.decode(String.self, forKey: .facSalary)
        
        self.cost = try container.decode(String.self, forKey: .cost)
        
        print("here7")
           
           
       }
}
