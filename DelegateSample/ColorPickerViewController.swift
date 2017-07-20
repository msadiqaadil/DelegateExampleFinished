//
//  ColorPickerViewController.swift
//  DelegateSample
//
//  Created by Sadiq, Sadiq on 20/07/17.
//  Copyright © 2017 Sadiq, Sadiq. All rights reserved.
//

import UIKit

protocol ColorPickerDelegate : class {
    func didPickColor(color : UIColor)
}

class ColorPickerViewController: UIViewController {
    weak var delegate : ColorPickerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func redButtonClicked(_ sender: Any) {
        self.delegate?.didPickColor(color: UIColor.red)
    }
    @IBAction func blueButtonClicked(_ sender: Any) {
        self.delegate?.didPickColor(color: UIColor.blue)
    }
    
    @IBAction func yellowButtonClicked(_ sender: Any) {
                self.delegate?.didPickColor(color: UIColor.yellow)
    }



}
