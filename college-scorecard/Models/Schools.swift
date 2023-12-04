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
    
    
    enum CodingKeys: String, CodingKey {
        
        
        case id = "id"
        case schoolName = "school.name"
        case studentSize = "2013.student.size"
        
    }
    
    init (from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.id = try container.decode(String.self, forKey: .id)
        
        self.schoolName = try container.decode(String.self, forKey: .schoolName)
        
        self.studentSize = try container.decode(String.self, forKey: .studentSize)
           
           
       }
}
