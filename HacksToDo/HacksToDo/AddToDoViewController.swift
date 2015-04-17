//
//  ViewController.swift
//  HacksToDo
//
//  Created by Krishnan Srinivasan on 4/17/15.
//  Copyright (c) 2015 HackYale. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {

    var hackIdea: HackIdea?
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if sender as? NSObject != self.doneButton {
            return
        }
        if count(self.textField.text) > 0 {
            self.hackIdea = HackIdea(name: self.textField.text)
        }
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
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

