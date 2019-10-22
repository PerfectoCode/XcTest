//
//  ViewController.swift
//  KiffSimpleIosAppForTesting
//
//  Created by Igor Gindin on 21/11/2017.
//  Copyright © 2017 Perfecto Mobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var txtSomeText: UITextField!
    @IBOutlet weak var lblSomeText: UILabel!
    @IBOutlet weak var lblSlider: UILabel!
    @IBOutlet weak var sldrSlider: UISlider!
    
    // MARK: - Actions
    @IBAction func btnSetNewtext(_ sender: UIButton) {
//        if txtSomeText.text != nil {
            lblSomeText.text = txtSomeText.text
//        } else {
//            lblSomeText.text = ""
//        }
        
        txtSomeText.text = ""
    }
    
    @IBAction func btnSetDefaultText(_ sender: UIButton) {
        lblSomeText.text = "Something"
    }
    
    @IBAction func slider(_ sender: UISlider) {
        lblSlider.text = String(Int(sender.value))
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

