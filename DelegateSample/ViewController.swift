//
//  ViewController.swift
//  DelegateSample
//
//  Created by Sadiq, Sadiq on 20/07/17.
//  Copyright © 2017 Sadiq, Sadiq. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ColorPickerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let pickerController = segue.destination as! ColorPickerViewController
        pickerController.delegate = self
    }
    
    func didPickColor(color : UIColor) {
        self.dismiss(animated: true, completion: nil)
        self.view.backgroundColor = color
    }

}

