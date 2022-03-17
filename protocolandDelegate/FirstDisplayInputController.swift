//
//  DisplayInputController.swift
//  protocolandDelegate
//
//  Created by Yashom on 17/03/22.
//

import UIKit

class FirstDisplayInputController: UIViewController  {
   
    
   
    
//    var getInput:String?

    @IBOutlet weak var DisplayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        DisplayLabel.text = getInput


    }
    
    func test() {
        print("inside test")
    }
    
    @IBAction func btnGotoSecondController(_ sender: UIButton) {
        if let displayVc = self.storyboard?.instantiateViewController(withIdentifier: "EnterInput") as? EnterInput{
             displayVc.delegate = self
//            displayVc.getInput = nametextfield.text
            self.navigationController?.pushViewController(displayVc, animated: true)
        }
        
    }
}

extension DisplayInputController:UpdateFirstScreenDelegate {
    func updateLabel(value: String) {
        print("inside display view controller.... \(value)")
        DisplayLabel.text = value
    }
}
