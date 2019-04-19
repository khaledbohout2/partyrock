//
//  ViewController.swift
//  partyrock
//
//  Created by Khaled Bohout on 1/17/19.
//  Copyright © 2019 Khaled Bohout. All rights reserved.
//
var urltest: String = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/b_7huWDpkIY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"

import UIKit

class MainVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tabelView: UITableView!
    
    var partyrocks = [partyrock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let p1 = partyrock(imageurl: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videourl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videotitle: "Lights Out")
        
        let p2 = partyrock(imageurl: "http://www.croshalgroup.com/wp-content/uploads/2015/05/Redfoo-Website.jpg", videourl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1w9DiGlZksU\" frameborder=\"0\" allowfullscreen></iframe>", videotitle: "Let's Get Ridiculous")
        let p3 = partyrock(imageurl: "https://i.ytimg.com/vi/2wUxw6GH3IM/hqdefault.jpg", videourl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vg_nvEGryA4\" frameborder=\"0\" allowfullscreen></iframe>", videotitle: "Juicy Wiggle Lesson")
        let p4 = partyrock(imageurl: "http://www.billboard.com/files/styles/article_main_image/public/media/lmfao-party-rock-anthem-2011-billboard-650.jpg", videourl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gZIqW92GaTQ\" frameborder=\"0\" allowfullscreen></iframe>", videotitle: "Party Rock Commercial")
        let p5 = partyrock(imageurl: "http://direct-ns.rhap.com/imageserver/v2/albums/Alb.219913217/images/600x600.jpg", videourl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>", videotitle: "Juicy Wiggle")
        
        
        partyrocks.append(p1)
        partyrocks.append(p2)
        partyrocks.append(p3)
        partyrocks.append(p4)
        partyrocks.append(p5)
        
        tabelView.delegate = self
        tabelView.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tabelView.dequeueReusableCell(withIdentifier: "partycell", for: indexPath) as? Partycell {
            
            let partyrock = partyrocks[indexPath.row]
            cell.updateUI(partyrock: partyrock)
            return cell
            
            
        }
        else{
        return UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return partyrocks.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyrock = partyrocks[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: partyrock)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let party = sender as? partyrock{
                destination.partyrock = party
            }
        }
    }
    }
    





