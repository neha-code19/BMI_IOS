//
//  RoundButton.swift
//   Created by NEHA PATEL on 16/12/22.
//  Copyright © 2022 30128051. All rights reserved.
//

import UIKit

@IBDesignable
open class RoundButton: UIButton {
 
    // define some functions
    func setup() {
        self.clipsToBounds = true
        self.layer.cornerRadius = 5.0
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
}
