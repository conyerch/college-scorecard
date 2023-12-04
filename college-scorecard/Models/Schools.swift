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
       
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.id = try container.decode(Int.self, forKey: .id)
        
        self.schoolName = try container.decode(String.self, forKey: .schoolName)
        
        self.studentSize = try container.decode(Int.self, forKey: .studentSize)
        
        self.web = try container.decode(String.self, forKey: .web)
        
        self.facSalary = try container.decode(Int.self, forKey: .facSalary)
        
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
           
       }
}
