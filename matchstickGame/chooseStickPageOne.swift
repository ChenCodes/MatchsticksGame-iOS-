//
//  chooseStickPageOne.swift
//  matchstickGame
//
//  Created by Jack Chen on 6/22/16.
//  Copyright © 2016 Jack Chen. All rights reserved.
//

import UIKit


var numberSticks = 0
class chooseStickPageOne: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func chosenTwenty(sender: AnyObject) {
        numberSticks = 20
        
        
    }

    
    @IBAction func chosenTen(sender: AnyObject) {
        numberSticks = 10
    
        
    }



    
    
    
}
