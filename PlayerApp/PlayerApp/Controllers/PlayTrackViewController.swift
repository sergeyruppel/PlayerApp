//
//  PlayTrackViewController.swift
//  PlayerApp
//
//  Created by Sergey Ruppel on 24.09.2023.
//

import UIKit
import AVFoundation

class PlayTrackViewController: UIViewController {
    
    @IBOutlet weak var trackImage: UIImageView!
    
    var track: Track?
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = track?.fileName ?? "Track Name"
        trackImage.image = UIImage(named: track?.fileName ?? "")
        
        guard let url = Bundle.main.url(
            forResource: track?.fileName, withExtension: track?.fileExtension
        ) else { return }
        
        player = AVAudioPlayer()
        player.
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
