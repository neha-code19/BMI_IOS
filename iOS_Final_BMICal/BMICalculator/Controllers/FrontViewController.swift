//
//  FrontViewController.swift
//  Created by NEHA PATEL on 16/12/22.
//  Copyright © 2022 30128051. All rights reserved.
//

import UIKit

class FrontViewController: UIViewController {

    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var ageTextfield: UITextField!
    @IBOutlet weak var genderTextfield: UITextField!
    @IBOutlet weak var weightTextfield: UITextField!
    @IBOutlet weak var heightTextfield: UITextField!
    
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToHome" {
            let resultVC = segue.destination as! HomeViewController
            resultVC.weight = (weightTextfield.text! as NSString).floatValue
            resultVC.height = (heightTextfield.text! as NSString).floatValue
        }
    }
    
    @IBAction func moveButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "goToHome", sender: self)
    }
    
    
}
