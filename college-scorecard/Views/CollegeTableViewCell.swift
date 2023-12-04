//
//  CollegeTableViewCell.swift
//  college-scorecard
//
//  Created by christopher conyersIV on 12/3/23.
//

import UIKit

class CollegeTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var urlImageView: UIImageView!
    
    
    @IBOutlet weak var collegeName: UILabel!
    
    
    @IBOutlet weak var studentSize: UILabel!
    
    var school:Schools?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(_ s:Schools) {
        self.school = s
        self.collegeName.text = school?.schoolName
        self.studentSize.text = school?.studentSize
        
        // set thumbnail
        
        guard self.school!.web != "" else {
            return
        }
        
        let url = URL(string: self.school!.web)
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { data, response, error in
            if error == nil && data != nil {
                
                if url?.absoluteString != self.school?.web {
                    
                    // video cell has been recycled
                    return
                }
                
                let image = UIImage(data: data!)
                
                DispatchQueue.main.async {
                    self.urlImageView.image = image
                }
            }
        }
        
        dataTask.resume()
        
    }

}
