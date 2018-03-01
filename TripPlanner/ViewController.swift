//
//  ViewController.swift
//  TripPlanner
//
//  Created by Ronnie Wang on 2/28/18.
//  Copyright © 2018 DeAnza. All rights reserved.
//

import UIKit

extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var datePickerView: UIPickerView!
    
    @IBOutlet weak var navigationButton: UIButton!
    
    @IBOutlet weak var lengthPickerView: UIPickerView!
    
    @IBOutlet weak var locationInput: UITextField!
    
    let startDate = ["Today", "Tomorrow"]
    let length = ["1", "2", "3", "4", "5"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(pickerView.tag == 1){
            return "\(startDate[row])"
        }
        else{
            return "\(length[row])"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var countrows: Int
        if(pickerView.tag == 1){
            countrows = startDate.count
        }
        else{
            countrows = length.count
        }
        return countrows
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(pickerView.tag == 1){
            print(startDate[row])
        }
        if(pickerView.tag == 2){
            print(length[row])
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        locationInput.setLeftPaddingPoints(20)
        datePickerView.selectRow(0, inComponent: 0, animated: true)
        lengthPickerView.selectRow(2, inComponent: 0, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

