//
//  GithubTableViewCell.swift
//  TestLayouts
//
//  Created by Rummy Khan on 9/13/18.
//  Copyright © 2018 Rummy Khan. All rights reserved.
//

import UIKit

class GithubTableViewCell: UITableViewCell {
    
    static let reuseIdentifier : String = "GithubTableViewCell"
    
    var user : Dictionary<String, Any>? {
        didSet{
            updateUI()
        }
    }
    
    @IBOutlet weak var imgUserProfile: UIImageView!
    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var lblUserCompany: UILabel!
    @IBOutlet weak var lblUserType: UILabel!
    
    @IBOutlet weak var imgLocation: UIImageView!
    @IBOutlet weak var lblLocation: UILabel!
    
    @IBOutlet weak var imgBlog: UIImageView!
    @IBOutlet weak var lblBlog: UILabel!
    
    @IBOutlet weak var imgBio: UIImageView!
    @IBOutlet weak var lblBio: UILabel!
    
    @IBOutlet weak var imgFollowers: UIImageView!
    @IBOutlet weak var lblFollowers: UILabel!
    
    @IBOutlet weak var imgRepos: UIImageView!
    @IBOutlet weak var lblRepos: UILabel!
    
    @IBOutlet weak var imgGists: UIImageView!
    @IBOutlet weak var lblGists: UILabel!
    
    @IBOutlet weak var lblCreatedAt: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(){
        
        if let user = self.user {
            
            if let url = URL(string: user["avatar_url"]! as! String) {
                let data = try? Data(contentsOf: url) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
                imgUserProfile.image = UIImage(data: data!)
            }
            
            lblUserName.text = "\(user["name"]!) (\(user["login"]!))"
            lblUserType.text = user["type"]! as? String
            lblLocation.text = user["location"]! as? String
            lblBlog.text = user["blog"]! as? String
            lblBio.text = user["bio"]! as? String
            lblFollowers.text = "\(user["followers"]!)"
            lblRepos.text = "\(user["public_repos"]!)"
            lblGists.text = "\(user["public_gists"]!)"
            lblCreatedAt.text = user["created_at"]! as? String
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
