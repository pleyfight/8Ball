//
//  ViewController.swift
//  8Ball
//
//  Created by AV Japan on 2019/09/12.
//  Copyright © 2019 FRGY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var ballImageView1: UIImageView!
    
    var askQuestion : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallImage()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonPress(_ sender: UIButton)
    {
        updateBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        updateBallImage()
    }
    
    func updateBallImage()
    {
        askQuestion = Int.random(in: 0 ... 4)
        
        ballImageView1.image = UIImage(named: ballArray[askQuestion])
    }
}

