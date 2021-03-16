//
//  SpecialBar.swift
//  classroom-tracker-v3
//
//  Created by Brian Schott on 3/10/21.
//

import UIKit

class SpecialBar: UINavigationBar {
   
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.standardAppearance.backgroundColor = .purple
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
