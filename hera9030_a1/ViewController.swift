//
//  ViewController.swift
//  hera9030_a1
//
//  Created by Sachintha Herath Mudiyanselage on 2020-01-13.
//  Copyright © 2020 wlu. All rights reserved.
//

import UIKit

var orangeImage = "image/Unknown-1"
var pineImage = "image/Unknown-3"
var lemonImage = "image/Unknown-2"
var appleImage = "image/Unknown"


//Variables that track up count / down count of each fruit
var upCountPine = 0
var downCountPine = 0

var upCountLemon = 0
var downCountLemon = 0

var upCountApple = 0
var downCountApple = 0

var upCountOrange = 0
var downCountOrange = 0

//Used to change the view
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

    //UI variables
    @IBOutlet weak var fruitView: UIImageView!
    
    @IBOutlet weak var upLabel: UILabel!
    
    @IBOutlet weak var downLabel: UILabel!
    
    //Upvote button function
    @IBAction func upButton(_ sender: UIButton) {
        
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
    
    //Downvote button function
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
    
    //Next button function / changing images and labels 
    @IBAction func nextButton(_ sender: Any) {
        
        slideshowCount += 1
        
        if(slideshowCount == 1){
            fruitView.image = UIImage(named: pineImage)
            upLabel.text = String(upCountPine)
            downLabel.text = String(downCountPine)
        }
        else if(slideshowCount == 2){
            fruitView.image = UIImage(named: lemonImage)
            upLabel.text = String(upCountLemon)
            downLabel.text = String(downCountLemon)
        }
        else if(slideshowCount == 3){
            fruitView.image = UIImage(named: appleImage)
            upLabel.text = String(upCountApple)
            downLabel.text = String(downCountApple)
        }
        else{
            slideshowCount = 0
            fruitView.image = UIImage(named: orangeImage)
            upLabel.text = String(upCountOrange)
            downLabel.text = String(downCountOrange)
        }
    }
}


