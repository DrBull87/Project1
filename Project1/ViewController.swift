//
//  ViewController.swift
//  Project1
//
//  Created by Айк Шатворян on 19.08.2020.
//  Copyright © 2020 Hike Shatvoryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var backGraund: UIView!
    @IBOutlet weak var lableTextSetings: UILabel!
    @IBOutlet weak var swichOffOn: UISwitch!
    private var dark: Bool = false
        override var preferredStatusBarStyle: UIStatusBarStyle {
            if dark {
                return .lightContent
            } else {
                return .default
            }
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func swichPush(_ sender: Any) {
    if swichOffOn.isOn {
        backGraund.backgroundColor = UIColor.black
        lableTextSetings.textColor = UIColor.white
    }else {
        backGraund.backgroundColor = UIColor.white
        lableTextSetings.textColor = UIColor.black
    }
    self.dark = swichOffOn.isOn
    self.setNeedsStatusBarAppearanceUpdate()
    
    
}
}
