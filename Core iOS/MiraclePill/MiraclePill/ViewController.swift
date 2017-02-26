//
//  ViewController.swift
//  MiraclePill
//
//  Created by Jonathan on 2/24/17.
//  Copyright © 2017 Jonathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipField: UITextField!
    @IBOutlet weak var buyBtn: UIButton!
    
    let states = ["Alaska", "Alabama", "Arkansas", "Arizona", "California",
                  "Colorado", "Connecticut", "District of Columbia", "Delaware", "Florida",
                  "Georgia", "Hawaii", "Iowa", "Idaho", "Illinois",
                  "Indiana", "Kansas", "Kentucky", "Louisiana", "Massachusetts",
                  "Maryland", "Maine", "Michigan", "Minnesota", "Missouri",
                  "Mississippi", "Montana", "North Carolina", "North Dakota", "Nebraska",
                  "New Hampshire", "New Jersey", "New Mexico", "Nevada", "New York",
                  "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island",
                  "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah",
                  "Virginia", "Vermont", "Washington","Wisconsin", "West Virginia",
                  "Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryField.isHidden = true
        zipLabel.isHidden = true
        zipField.isHidden = true
        buyBtn.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryField.isHidden = false
        zipLabel.isHidden = false
        zipField.isHidden = false
        buyBtn.isHidden = false
    }
    
    @IBAction func buyButtonPressed(_ sender: Any) {
    }
    
}

