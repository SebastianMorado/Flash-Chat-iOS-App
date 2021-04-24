//
//  PopUpViewController.swift
//  Flash Chat iOS13
//
//  Created by Sebastian Morado on 4/23/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {
    
    @IBOutlet weak var popupLabel: UILabel!
    
    var displayText : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popupLabel.text = displayText
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }

    @IBAction func okPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
}
