//
//  TrackCell.swift
//  lab-tunley
//
//  Created by Patrick Baker on 9/9/23.
//

import UIKit
import Nuke

class TrackCell: UITableViewCell {
    
    
    

    
    
    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    
    @IBOutlet weak var artistNameLabel2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Do any additional setup after loading the view.
    }
    override func setSelected(_ selected: Bool, animated: Bool){
        super.setSelected(selected, animated: animated)
    }
    func configure(with track: Track) {
        trackNameLabel.text = track.trackName
        artistNameLabel2.text = track.artistName

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: track.artworkUrl100, into: trackImageView)
    }
    
}
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


