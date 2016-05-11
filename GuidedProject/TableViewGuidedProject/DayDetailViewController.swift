//
//  DayDetailViewController.swift
//  TableViewGuidedProject
//
//  Created by Karl Pfister on 5/10/16.
//  Copyright © 2016 Karl Pfister. All rights reserved.
//

import UIKit

class DayDetailViewController: UIViewController {
    
    var day: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(day)
        if let unwrappedDay = day {
            navigationItem.title = unwrappedDay
        }

        // Do any additional setup after loading the view.
    }
    
}
