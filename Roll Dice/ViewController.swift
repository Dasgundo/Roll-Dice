//
//  ViewController.swift
//  Roll Dice
//
//  Created by Alexander Omelchuk on 12.08.2018.
//  Copyright © 2018 Alexander Omelchuk. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImage: UIImageView!
    
    @IBOutlet weak var rightImage: UIImageView!
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func button(_ sender: UIButton) {
        
        rollDice()
    }
    
    func rollDice(){
        
        let One = arc4random_uniform(6) + 1
        
        let Two = arc4random_uniform(6) + 1
        
        leftImage.image = UIImage(named: "Dice\(One)")
        
        rightImage.image = UIImage(named: "Dice\(Two)")
        
        display.text = "Сумма: \(One + Two)"
        
        AudioServicesPlaySystemSound(SystemSoundID(1104))
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        display.text = "Привет игрок!"
    }
}
