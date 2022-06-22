//
//  CheckBox.swift
//  Task_Proramming_Reminder
//
//  Created by sina taherkhani on 5/10/22.
//

import UIKit
enum myType {
case checkbox
case radiobutton
}
class CheckBox: UIButton {

    let checked = UIImage(named: "check")!
    let uncheck = UIImage(named: "uncheck")!
    
    public var isChecked:Bool = true
    property var state:myType = .checkbox
    
    override func awakeFromNib() {
        self.addTarget(self, action: #selector(Clicked), for: UIControl.Event.touchUpInside)
    }
    
    @objc func Clicked(sender:UIButton) {
        if sender == self {
            if state == .checkbox {
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

}
