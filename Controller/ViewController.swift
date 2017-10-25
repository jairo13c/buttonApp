//
//  ViewController.swift
//  buttonApp
//
//  Created by Cortez, Jairo on 10/10/17.
//  Copyright © 2017 Cortez, Jairo. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var firstButton: UIButton!
    private lazy var color : ColorTools = ColorTools()
    @IBAction func firstMethod(_ sender: UIButton)
    {
        firstButton.backgroundColor =
            color.createRandomColor()
        view.backgroundColor = color.createRandomColor()
        
        firstButton.setTitleColor(color.createRandomColor(), for: .normal)
        firstButton.setTitle("size\(createRandomeFontSize())", for: .normal)
        firstButton.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Thin", size: createRandomeFontSize())
    }
    
    
    override func viewDidLoad()
    {
        if(firstButton.backgroundColor == .blue)
        {
            (firstButton.backgroundColor = .red)
        }
        else
        {
            firstButton.backgroundColor = .blue
        }
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        }
       // firstButton.fontStyle = createRandomFontStyle
        //view.backgroundFontStyle = createRandomFontStyle
    
    
    private func createRandomeFontSize()-> CGFloat
    {
        //adding font size of text
        
        let newFontSize = CGFloat  (arc4random_uniform(50))
        
        return newFontSize
    }

    override func didReceiveMemoryWarning()
    {
    
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
     }


}

