//
//  ViewController.swift
//  War
//
//  Created by Tim on 10/18/17.
//  Copyright © 2017 Tim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var rightScore = 0
    var leftScore = 0
    
    let cardNames = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        // create random numbers
        let leftNumber = Int(arc4random_uniform(13))
        let rightNumber = Int(arc4random_uniform(13))
        
        // set images
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        // compare the cards
        if leftNumber > rightNumber {
            // left won
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        } else if leftNumber == rightNumber {
            // it's a tie
            
        } else {
            // right card won
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
    }

}
