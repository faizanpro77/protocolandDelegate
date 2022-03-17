//
//  ViewController.swift
//  protocolandDelegate
//
//  Created by Yashom on 17/03/22.
//

import UIKit

class EnterInput: UIViewController {

    @IBOutlet weak var nametextfield: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnClicked(_ sender: UIButton) {
        if let displayVc = self.storyboard?.instantiateViewController(withIdentifier: "DisplayInputController") as? DisplayInputController{
            displayVc.getInput = nametextfield.text
            self.navigationController?.pushViewController(displayVc, animated: true)
        }
    }
    
}


//
//if let signupVC = self.storyboard?.instantiateViewController(identifier: "SignupViewController") as? SignupViewController{
//    self.navigationController?.pushViewController(signupVC, animated: true)
//}

