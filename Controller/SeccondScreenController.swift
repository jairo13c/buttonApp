//
//  SeccondScreenController.swift
//  buttonApp
//
//  Created by Cortez, Jairo on 10/12/17.
//  Copyright © 2017 Cortez, Jairo. All rights reserved.
//

import UIKit
public class SecoundScreenContoller : UIViewController
{
    private lazy var color : ColorTools = ColorTools()
    
    public override func viewDiddLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = color.createRandomeColor()
        
    }
}
