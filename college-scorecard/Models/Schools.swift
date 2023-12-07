//
//  Schools.swift
//  college-scorecard
//
//  Created by christopher conyersIV on 12/2/23.
//

import Foundation

struct Schools: Decodable {
    
    var id:Int?
    var schoolName = ""
    var studentSize:Int?
    var sat:Int?
    var facSalary:Int?
    var cost:Int?
    var web = ""
    var earnings:[Earnings]?
    
    // latest.admissions.sat_scores.average.overall,school.faculty_salary,latest.cost.attendance.academic_year"
    
    enum CodingKeys: String, CodingKey {
        
        
        case id = "id"
        case schoolName = "school.name"
        case studentSize = "latest.student.size"
        case sat = "latest.admissions.sat_scores.average.overall"
        case facSalary = "school.faculty_salary"
        case cost = "latest.cost.attendance.academic_year"
        case web = "school.school_url"
        case earnings = "latest.programs.cip_4_digit"
        
    }
    
    init (from decoder: Decoder) throws {
       
        // retrieve main container
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        // set member fields
        self.id = try container.decode(Int.self, forKey: .id)
        
        self.schoolName = try container.decode(String.self, forKey: .schoolName)
        
        self.studentSize = try container.decode(Int.self, forKey: .studentSize)
        
        self.web = try container.decode(String.self, forKey: .web)
        
        self.facSalary = try container.decode(Int.self, forKey: .facSalary)
        
        // try to get SAT/cost fields, throw error if unretrievable 
        do {
            
            self.sat = try container.decode(Int.self, forKey: .sat)
            
        }
        catch {
            self.sat = -1
            
        }
        
        do {
            
            self.cost = try container.decode(Int.self, forKey: .cost)
            
        }
        catch {
            self.cost = -1
            
            }
        
        // get earnings from Earnings object
        self.earnings = try container.decode([Earnings]?.self, forKey: .earnings)
           
       }
}
