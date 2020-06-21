//
//  ViewController.swift
//  Xylophone
//  Created by Nareshri Babu on 17/04/2020.
//  Concept by London App Brewery
//  Copyright © 2020 Nareshri Babu. All rights reserved.
//  This app was created for learning purposes.
//  All images were only used for learning purposes and do not belong to me.
//  All sounds were only used for learning purposes and do not belong to me.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //create new AV Audio Player
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!) //the exclaimation mark addresses nil
        //! means we have checked that every button has a title and we wont get nil
        
        //make the button to half the opacity
        sender.alpha = 0.5
        
        //make it last for 0.2 seconds
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
        
    }
    
    func playSound(soundName: String) {
        //file constant
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        //putting the url into the player: kind of like putting a CD in a CD player
        player = try! AVAudioPlayer(contentsOf: url!)
        //we are playing the CD
        player.play()
                
    }
}


