//
//  ResultViewController.swift
//  CoinFlip
//
//  Created by Max Miranda on 9/5/18.
//  Copyright © 2018 ___MaxAMiranda___. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var faceSelected : String!
    var randomFace : String!
    
    var resultLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomInt = arc4random_uniform(1)
        if (randomInt > UInt32(0.5)) {
            randomFace = "Heads"
        } else {
            randomFace = "Tails"
        }
        if (randomFace == faceSelected) {
            displayLabel("Correct!")
        } else {
            displayLabel("Wrong!")
        }
        // Do any additional setup after loading the view.
    }

    func displayLabel(_ result: String) {
        resultLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        resultLabel.adjustsFontSizeToFitWidth = true
        resultLabel.center = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        resultLabel.textAlignment = .center
        resultLabel.text = "You were \(result). It was \(randomFace)"
        view.addSubview(resultLabel)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
