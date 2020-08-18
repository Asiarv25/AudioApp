//
//  ViewController.swift
//  Asia_R_AsiasAudio_App
//
//  Created by Asia Reid on 8/18/20.
//  Copyright © 2020 Asia Reid. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    var MusicPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //finding the files
        
        
        let sounds = Bundle.main.path(forResource: "ミカヅキBIGWAVE - Pink Sugar ピンクの砂糖", ofType: ".mp3")
        
        //handling errors
        
        do { MusicPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sounds!))}
    
    catch {print(error)
    
    }


}
    @IBAction func Rewind(_ sender: Any) {MusicPlayer.pause()
    }
    @IBAction func Play(_ sender: Any) { MusicPlayer.play()
    }
   
    @IBAction func FastForward(_ sender: Any) { MusicPlayer.stop()
    }

//BUTTON SETUP!!!!

}
