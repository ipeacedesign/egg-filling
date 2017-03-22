//
//  tastymath.swift
//  eggtart
//
//  Created by Kelly Wang on 2017/3/22.
//  Copyright © 2017年 Kelly Wang. All rights reserved.
//

import UIKit

class tastymath: UIViewController {
    @IBOutlet weak var Typein: UITextField!
    @IBOutlet weak var ResultTitle: UILabel!
    @IBOutlet weak var CreamTitle: UILabel!
    @IBOutlet weak var CreamAmount: UILabel!
    @IBOutlet weak var CreamUnit: UILabel!
    @IBOutlet weak var MilkTitle: UILabel!
    @IBOutlet weak var MilkAmount: UILabel!
    @IBOutlet weak var MilkUnit: UILabel!
    @IBOutlet weak var SugarTitle: UILabel!
    @IBOutlet weak var SugarAmount: UILabel!
    @IBOutlet weak var SugarUnit: UILabel!
    
    @IBAction func ConfirmBtn(_ sender: Any) {
        let number = Int(Typein.text!)
        
        if number == nil {
            ResultTitle.isHidden = false
            ResultTitle.text = "[請輸入數字！]"
            CreamTitle.isHidden = true
            CreamUnit.isHidden = true
            MilkTitle.isHidden = true
            MilkUnit.isHidden = true
            SugarTitle.isHidden = true
            SugarUnit.isHidden = true
            CreamUnit.isHidden = true
            MilkUnit.isHidden = true
            SugarUnit.isHidden = true
            CreamAmount.isHidden = true
            MilkAmount.isHidden = true
            SugarAmount.isHidden = true
        }
        else {
        if  number! > 0 {
            ResultTitle.isHidden = false
            ResultTitle.text = "美味的比例"
            CreamTitle.isHidden = false
            CreamUnit.isHidden = false
            MilkTitle.isHidden = false
            MilkUnit.isHidden = false
            SugarTitle.isHidden = false
            SugarUnit.isHidden = false
            var CreamAmountnumber = Double(number!)/0.33*0.28
            var MilkAmountnumber = Double(number!)/0.33*0.2
            var SugarAmountnumber = Double(number!)/0.33*0.19
            CreamAmount.text = String(format: "%.2f",CreamAmountnumber)
            MilkAmount.text = String(format: "%.2f", MilkAmountnumber)
            SugarAmount.text = String(format:"%.2f", SugarAmountnumber)
            CreamAmount.isHidden = false
            MilkAmount.isHidden = false
            SugarAmount.isHidden = false
        }
        else {
            ResultTitle.isHidden = false
            ResultTitle.text = "[請輸入大於0的數字！]"
            CreamTitle.isHidden = true
            CreamUnit.isHidden = true
            MilkTitle.isHidden = true
            MilkUnit.isHidden = true
            SugarTitle.isHidden = true
            SugarUnit.isHidden = true
            CreamUnit.isHidden = true
            MilkUnit.isHidden = true
            SugarUnit.isHidden = true
            CreamAmount.isHidden = true
            MilkAmount.isHidden = true
            SugarAmount.isHidden = true
        }
    }
    }
    
  /*
  */

    override func viewDidLoad() {
        super.viewDidLoad()

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
