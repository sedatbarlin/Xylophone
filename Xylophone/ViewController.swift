//
//  ViewController.swift
//  angphone
//
//  Created by Sedat on 15.06.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: Any) {
        playsound(soundName: (sender as AnyObject).currentTitle!)
    }
    
    func playsound(soundName: String){
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}
