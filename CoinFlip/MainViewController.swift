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
        selectCoinLabel = UILabel(frame: CGRect(x: 10, y: 10, width: view.frame.width, height: 50))
        selectCoinLabel.text = "Pick Heads or Tails!"
        selectCoinLabel.textAlignment = .center
        view.addSubview(selectCoinLabel)
        
        headsImageView  =  UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height / 3))
        headsImageView.center = CGPoint(x: view.frame.width / 2, y: view.frame.height / 3)
        headsImageView.image = UIImage(named: "heads")
        headsImageView.contentMode = .scaleAspectFit
        view.addSubview(headsImageView)
        
        tailsImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height / 3))
        tailsImageView.center = CGPoint(x: view.frame.width / 2, y: 2 * view.frame.height / 3)
        tailsImageView.image = UIImage(named: "tails")
        tailsImageView.contentMode = .scaleAspectFit
        view.addSubview(tailsImageView)
        
        headsButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width / 2, height: 50))
        headsButton.setTitle("Heads", for: .normal)
        headsButton.backgroundColor = .blue
        headsButton.addTarget(self, action: #selector(headsClicked), for: .touchUpInside)
        view.addSubview(headsButton)
        
        tailsButton = UIButton(frame: CGRect(x: view.frame.width / 2, y: view.frame.height - 80, width: view.frame.width / 2, height: 50))
        tailsButton.setTitle("Tails", for: .normal)
        tailsButton.layer.cornerRadius = 20
        tailsButton.backgroundColor = .blue
        tailsButton.addTarget(self, action: #selector(tailsClicked), for: .touchUpInside)
        view.addSubview(tailsButton)
        
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

