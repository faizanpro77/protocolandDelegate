//
//  ViewController.swift
//  protocolandDelegate
//
//  Created by Yashom on 17/03/22.
//

import UIKit

protocol UpdateFirstScreenDelegate{
    func updateLabel(value:String)
}

class SecondEnterInput: UIViewController {


    @IBOutlet weak var nametextfield: UITextField!
  
    var delegate: UpdateFirstScreenDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    


    @IBAction func btnClicked(_ sender: UIButton) {
//        navigationController?.popViewController(animated: true)
        print(delegate)
        delegate?.updateLabel(value: nametextfield.text!)
        //delegate?.test()
    }
    
}


//
//if let signupVC = self.storyboard?.instantiateViewController(identifier: "SignupViewController") as? SignupViewController{
//    self.navigationController?.pushViewController(signupVC, animated: true)
//}

