//
//  DayDetailViewController.swift
//  TableViewGuidedProject
//
//  Created by Emily Mearns on 5/10/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

import UIKit

class DayDetailViewController: UIViewController {

    var day: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let unwrappedDay = day {
            navigationItem.title = unwrappedDay
        }
    }
        

}
