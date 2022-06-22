//
//  File.swift
//  
//
//  Created by sina taherkhani on 6/22/22.
//

import Foundation
import UIKit
enum types{
    case checkbox
    case radiobutton
}
class SelectionaryState: UIButton {

    let checked = UIImage(named: "check")
    let uncheck = UIImage(named: "uncheck")
    
    public var isChecked:Bool = true
    public var type:types = .checkbox
    override func awakeFromNib() {
        self.addTarget(self, action: #selector(Clicked), for: UIControl.Event.touchUpInside)
    }
    
    @objc func Clicked(sender:UIButton) {
        if sender == self {
            if isChecked == true {
                self.setBackgroundImage(checked, for: .normal)
                isChecked = false
            }
            else{
                self.setBackgroundImage(uncheck, for: .normal)
                isChecked = true
            }
        }
    }

}
