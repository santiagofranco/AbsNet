//
//  ViewController.swift
//  SampleAbsNet
//
//  Created by Santiago Franco García on 23/5/18.
//  Copyright © 2018 Santiago Franco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let test = Test()
        
        test.input = TestInput(exampleVar: "death")
        
        test.success = { (response) in
           
            
            var text = ""
            response?.result.forEach({ (anime) in
                text = "\(text),\(anime.title)"
            })
            
            self.label.text = text
            
        }
        
        test.failure = { (error) in
            print(error)
        }
        
        test.execute()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

