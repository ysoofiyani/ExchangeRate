//
//  ViewController.swift
//  ExchangeRate
//
//  Created by Yasser on 2018-05-28.
//  Copyright © 2018 Yasser. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var currencyCode = ["CAD", "EUR", "IRR", "RUB", "TRY", "USD", "XPF", "AUD", "CHF"]
    let url =  "https://v3.exchangerate-api.com/pair/5e3b6aaa92b913e2ed4195ff/"

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var output: UILabel!
    
    @IBOutlet weak var inputData: UIPickerView!
    @IBOutlet weak var outputData: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        inputData.delegate = self
        inputData.dataSource = self
        outputData.delegate = self
        outputData.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currencyCode.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return currencyCode[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(currencyCode[row])
                
    }
}

