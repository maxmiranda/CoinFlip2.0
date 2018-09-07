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
    
    var newCoin : Coin!
    override func viewDidLoad() {
        super.viewDidLoad()

        newCoin = Coin(0.8)
        randomFace = newCoin.getRandomFace()
        if (randomFace == faceSelected) {
            displayLabel("Correct!")
        } else {
            displayLabel("Wrong!")
        }
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    
    func displayLabel(_ result: String) {
        resultLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        resultLabel.adjustsFontSizeToFitWidth = true
        resultLabel.center = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        resultLabel.textAlignment = .center
        resultLabel.text = "You were \(result). It was \(randomFace!)"
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
