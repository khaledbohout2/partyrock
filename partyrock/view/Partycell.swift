//
//  Partycell.swift
//  partyrock
//
//  Created by Khaled Bohout on 1/17/19.
//  Copyright © 2019 Khaled Bohout. All rights reserved.
//

import UIKit

class Partycell: UITableViewCell {

    @IBOutlet weak var videopreviewimage: UIImageView!
    
    @IBOutlet weak var videotitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func updateUI(partyrock : partyrock)
    {
        videotitle.text = partyrock.videotitle
        
        let imageurl = URL(string: partyrock.imageurl)!
        DispatchQueue.global().async {
            do { let imageurldata = try Data(contentsOf: imageurl)
                DispatchQueue.global().sync {
                    self.videopreviewimage.image = UIImage(data: imageurldata)
                }
            }catch{}
        }
        
        
        
    }



}
