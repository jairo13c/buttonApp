//
//  MediaPageController.swift
//  buttonApp
//
//  Created by Cortez, Jairo on 10/18/17.
//  Copyright © 2017 Cortez, Jairo. All rights reserved.
//

import UIKit
import AVFoundation

public class MediaPageController : UIViewController
{
    @IBOutlet weak var imageFrame: UIImageView!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var soundSlider: UISlider!
    @IBOutlet weak var soundButton: UIButton!
    
    private var soundPlayer : AVAudioPlayer?
    private var imageCounter : Int = 0
    private lazy var color : ColorTools = ColorTools()
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        view.backgroundColor = color.createRandomColor()
        loadAudioFile()
        // Do any additional setup after loading the view.
    }
    
    public override func didReceiveMemoryWarning() -> Void
    {
        super.didReceiveMemoryWarning()
    }
    private func chngeImage() -> Void
    {
   //     if (imageCounter > 5)
    //    {
   //         imageCounter+= 0
  //      }
   //     if(imageCounter == 0) ---}
   //     imageCounter += 1
   // }
    @IBAction func soundMethod() -> Void
    {
        playMusicFlie()
    }
    
    @IBAction func sliderMethod()-> Void
    {
        let seekTime = Double (soundSlider.value)
        soundPlayer?.currentTime = seekTime
    }
    
    private func playMusicFlie() -> Void
    {
        if let isPlaying = soundPlayer?.isPlaying
        {
            if (isPlaying)
            {
                soundPlayer?.pause()
            }
            else
            {
                soundPlayer?.play()
            }
        }
        //lessstable version
//          if ((soundPlayer?.isPlaying)!)
//          {
//          soundPlayer?.pause()
//          }
//          else
//          {
//            soundPlayer?.play()
//          }
      
    }
    
    private func loadAudioFile() -> Void
    {
        if let soundURL = NSDataAsset(name: "let her go")
        {
            do
            {
                try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try! AVAudioSession.sharedInstance().setActive(true)
                
                try soundPlayer = AVAudioPlayer(data: soundURL.data, fileTypeHint: "")
                soundSlider.maximumValue = Float ((soundPlayer?.duration)!)
                //Timer.scheduleTimer(timeInterval:0.2, target: self, selector: (#selector(self.updateSlider)), userInfo: nil, repeats: true)
            }
            catch
            {
                print("audio file load error")
            }
        }
    }
    @objc private func updateSlider() -> Void
    {
        soundSlider.value = Float ((soundPlayer?.currentTime)!)
    }
    
    

    
    private func changeImage() -> Void
    {
        
        if (imageCounter > 2 )
        {
            imageCounter = 0
        }
        
        if(imageCounter == 0)
        {
            imageFrame.image = UIImage(named: "car")
        }
        else if (imageCounter == 1)
        {
            imageFrame.image = UIImage(named: "soccer")
        }
        else
        {
            imageFrame.image = UIImage(named: " designe")
        }
        
        imageCounter += 1
    }
}


