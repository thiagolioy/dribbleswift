//
//  ViewController.swift
//  dribbleClient
//
//  Created by Thiago Lioy on 6/8/14.
//  Copyright (c) 2014 Thiago Lioy. All rights reserved.
//

import UIKit

class ShotsListViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchShots()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func fetchShots(listType:String = "popular"){
        
    }

}

