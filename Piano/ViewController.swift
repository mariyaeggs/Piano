//
//  ViewController.swift
//  Piano
//
//  Created by Mariya Eggensperger  on 2/5/18.
//  Copyright © 2018 Mariya Eggensperger. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{

   // Declare an audio player
   var audioPlayer : AVAudioPlayer!
   let regularNoteArray = ["c", "d", "e", "f", "g", "a", "b"]
   let sharpNoteArray = [""]
   
   override func viewDidLoad() {
      super.viewDidLoad()
   }
   
   @IBAction func regularNoteTapped(_ sender: UIButton) {
      playSoundFile(selectedSoundFile: regularNoteArray[sender.tag - 1])
   }
   @IBAction func sharpNoteTapped(_sender: UIButton) {
      
   }
   func playSoundFile(selectedSoundFile : String) {
      let soundURL = Bundle.main.url(forResource: selectedSoundFile, withExtension: "wav")
      do {
         try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
      } catch {
         print("Error in file handling.", error)
      }
      // Play audio
      audioPlayer.play()
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }


}

