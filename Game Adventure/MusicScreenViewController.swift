//
//  MusicScreenViewController.swift
//  Game Adventure
//
//  Created by Wei-En Chang on 11/10/19.
//  Copyright © 2019 Wei-En Chang. All rights reserved.
//

import UIKit
import AVFoundation
class MusicScreenViewController: UIViewController {
    @IBOutlet weak var MusicSoundtracks: UIView!
    @IBOutlet weak var NightMusicView: UIView!
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MusicSoundtracks.alpha = 0
        do {
        
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Test Soundtrack", ofType: "band")!))
            audioPlayer.prepareToPlay()
        }
        catch{
            print(error)
        }
    }
    var MusicButtonpressed = false
    var NightSoundtrackSamplepressed = false
    @IBAction func MusicSoundtracksButtonpressed(_ sender: Any) {
        if MusicButtonpressed == false {
            MusicButtonpressed = true
            animateinSamples()
        } else {
            MusicButtonpressed = false
            animateoutSamples()
            
        }
    }
    @IBAction func NightSampletoanimate(_ sender: Any) {
        if NightSoundtrackSamplepressed == false {
            NightSoundtrackSamplepressed = true
            animateinNightMusicView()
        } else {
            NightSoundtrackSamplepressed = false
            animateoutNightMusicView()
        }
    }
    @IBAction func playButtonPressed(_ sender: Any) {
        audioPlayer.play()
    }
    func animateinSamples() {
        NightMusicView.alpha = 0
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            self.MusicSoundtracks.alpha = 1
            })
    }
    func animateoutSamples() {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            self.MusicSoundtracks.alpha = 0
        })
    }
    func animateinNightMusicView() {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            self.NightMusicView.alpha = 1
        })
    }
    func animateoutNightMusicView() {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            self.NightMusicView.alpha = 0
        })
    }
}
