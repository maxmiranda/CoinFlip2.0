//
//  MainViewController - UISetup.swift
//  CoinFlip
//
//  Created by Max Miranda on 9/6/18.
//  Copyright © 2018 ___MaxAMiranda___. All rights reserved.
//

import UIKit

extension MainViewController {
    func setupLabel() {
        selectCoinLabel = UILabel(frame: CGRect(x: 10, y: 10, width: view.frame.width, height: 50))
        selectCoinLabel.text = "Pick Heads or Tails!"
        selectCoinLabel.textAlignment = .center
        view.addSubview(selectCoinLabel)
    }
    
    func setupImages() {
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
    }
    
    func setupButtons() {
        headsButton = UIButton(frame: CGRect(x: 0, y: view.frame.height - 80, width: view.frame.width / 2, height: 50))
        headsButton.setTitle("Heads", for: .normal)
        headsButton.backgroundColor = .blue
        headsButton.layer.cornerRadius = 20
        headsButton.addTarget(self, action: #selector(headsClicked), for: .touchUpInside)
        view.addSubview(headsButton)
        
        tailsButton = UIButton(frame: CGRect(x: view.frame.width / 2, y: view.frame.height - 80, width: view.frame.width / 2, height: 50))
        tailsButton.setTitle("Tails", for: .normal)
        tailsButton.layer.cornerRadius = 20
        tailsButton.backgroundColor = .blue
        tailsButton.addTarget(self, action: #selector(tailsClicked), for: .touchUpInside)
        view.addSubview(tailsButton)
    }
}
