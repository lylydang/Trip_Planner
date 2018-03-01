//
//  SearchViewController.swift
//  TripPlanner
//
//  Created by Ronnie Wang on 3/1/18.
//  Copyright © 2018 DeAnza. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UIGestureRecognizerDelegate  {

    @IBAction func RadiusSlider(_ sender: UISlider) {
        radiusLabel.text = String(Int(sender.value) * 500)
    }
    
    @IBOutlet weak var radiusLabel: UILabel!
    
    @IBOutlet weak var categoryPickerView: UIPickerView!
    
    @IBAction func SearchButton(_ sender: Any) {
        
    }
    
    let category = ["bar", "cafe", "casino", "library", "museum", "park", "restaurant", "zoo"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return category[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return category.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(category[row])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Search View"
        
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
