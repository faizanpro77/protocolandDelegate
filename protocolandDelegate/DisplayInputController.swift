//
//  DisplayInputController.swift
//  protocolandDelegate
//
//  Created by Yashom on 17/03/22.
//

import UIKit

class DisplayInputController: UIViewController {

    @IBOutlet weak var DisplayLabel: UILabel!
    
    var getInput:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        DisplayLabel.text = getInput

    }
}
