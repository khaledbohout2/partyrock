//
//  VideoVC.swift
//  partyrock
//
//  Created by Khaled Bohout on 1/17/19.
//  Copyright © 2019 Khaled Bohout. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var titlelbl: UILabel!
    
    @IBOutlet weak var webview : UIWebView!
    
    private var _partyrock : partyrock!
    
    var partyrock:partyrock {
        get {return _partyrock }
        set {_partyrock = newValue }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titlelbl.text = partyrock.videotitle
        webview.loadHTMLString(partyrock.videourl, baseURL: nil)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
