//
//  ViewController.swift
//  CoinFlip
//
//  Created by Max Miranda on 9/5/18.
//  Copyright © 2018 ___MaxAMiranda___. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var selectCoinLabel : UILabel!
    var headsImageView : UIImageView!
    var tailsImageView : UIImageView!
    var headsButton: UIButton!
    var tailsButton: UIButton!
    
    var faceSelected: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupLabel()
        setupImages()
        setupButtons()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    @objc func headsClicked() {
        faceSelected = "Heads"
        performSegue(withIdentifier: "toResults", sender: self)
    }
    @objc func tailsClicked() {
        faceSelected = "Tails"
        performSegue(withIdentifier: "toResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultVC = segue.destination as! ResultViewController
        resultVC.faceSelected = faceSelected
    }
    
    
}

