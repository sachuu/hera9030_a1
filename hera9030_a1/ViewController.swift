//
//  ViewController.swift
//  hera9030_a1
//
//  Created by Sachintha Herath Mudiyanselage on 2020-01-13.
//  Copyright © 2020 wlu. All rights reserved.
//

import UIKit

var upCountPine = 0
var downCountPine = 0

var upCountLemon = 0
var downCountLemon = 0

var upCountApple = 0
var downCountApple = 0

var upCountOrange = 0
var downCountOrange = 0

var slideshowCount = 0
//0 - orange
//1 - pineapple
//2 - lemon
//3 - apple


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var fruitView: UIImageView!
    
    @IBOutlet weak var upLabel: UILabel!
    
    @IBOutlet weak var downLabel: UILabel!
    
    @IBAction func upButton(_ sender: UIButton) {
        
        print(slideshowCount)
        
        if(slideshowCount == 0){
            upCountOrange += 1
            upLabel.text = String(upCountOrange)
        }
        
        if(slideshowCount == 1){
            upCountPine += 1
            upLabel.text = String(upCountPine)
        }
        
        if(slideshowCount == 2){
            upCountLemon += 1
            upLabel.text = String(upCountLemon)
        }
        
        if(slideshowCount == 3){
            upCountApple += 1
            upLabel.text = String(upCountApple)
        }
    }
    @IBAction func downButton(_ sender: Any) {
        if(slideshowCount == 0){
            downCountOrange += 1
            downLabel.text = String(downCountOrange)
        }
        
        if(slideshowCount == 1){
            downCountPine += 1
            downLabel.text = String(downCountPine)
        }
        
        if(slideshowCount == 2){
            downCountLemon += 1
            downLabel.text = String(downCountLemon)
        }
        
        if(slideshowCount == 3){
            downCountApple += 1
            downLabel.text = String(downCountApple)
        }
    }
    
    @IBAction func nextButton(_ sender: Any) {
        
        slideshowCount += 1
        
        print(slideshowCount)
        
        if(slideshowCount == 1){
            fruitView.image = UIImage(named: "Unknown-3.jpeg")
            upLabel.text = String(upCountPine)
            downLabel.text = String(downCountPine)
        }
        else if(slideshowCount == 2){
            fruitView.image = UIImage(named: "Unknown-2.jpeg")
            upLabel.text = String(upCountLemon)
            downLabel.text = String(downCountLemon)
        }
        else if(slideshowCount == 3){
            fruitView.image = UIImage(named: "Unknown.jpeg")
            upLabel.text = String(upCountApple)
            downLabel.text = String(downCountApple)
        }
        else{
            slideshowCount = 0
            fruitView.image = UIImage(named: "Unknown-1.jpeg")
            upLabel.text = String(upCountOrange)
            downLabel.text = String(downCountOrange)
        }
    }
}


