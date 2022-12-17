//
//  ResultViewController.swift
//  Created by NEHA PATEL on 16/12/22.
//  Copyright © 2022 30128051. All rights reserved.
//

import UIKit



class ResultViewController: UIViewController {

    //MARK: - @IBOutlets
    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    @IBOutlet var reCalculateButton: UIButton!
    @IBOutlet var reCalculateBottomConstraint: NSLayoutConstraint!
    
    
    
    //MARK: - Variables
    var bmiValue: String?
    var bmiColor: UIColor?
    var advice: String?
    
    
    //MARK: - Views
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        self.view.backgroundColor = bmiColor
        self.adviceLabel.text = advice?.uppercased()
        
        self.bmiLabel.textColor = .white
        self.adviceLabel.textColor = .white
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
    }
    
    //MARK: - Functions
    @IBAction func reCalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
   
    
}
