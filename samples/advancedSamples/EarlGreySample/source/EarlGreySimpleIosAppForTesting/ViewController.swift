//
//  ViewController.swift
//  EarlGreySimpleIosAppForTesting
//
//  Created by Igor Gindin on 23/11/2017.
//  Copyright © 2017 Perfecto Mobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var txtMultiLine: UITextView!
    @IBOutlet weak var lblMultiLine: UILabel!
    @IBOutlet weak var lblSegment: UILabel!
    
    // Mark: - Actions
    @IBAction func btnNewText(_ sender: UIButton) {
        lblMultiLine.text = txtMultiLine.text
        txtMultiLine.text = ""
    }
    
    @IBAction func btnDefaultText(_ sender: UIButton) {
        lblMultiLine.text = "Fixed text"
    }
    
    @IBAction func segment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            lblSegment.text = "Left"
        } else {
            lblSegment.text = "Right"
        }
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

