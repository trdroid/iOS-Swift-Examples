//
//  ViewController.swift
//  HandlingOrientations
//
//  Created by droid on 2016-11-05.
//  Copyright © 2016 droid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can berecreated.
	}

	
	override var supportedInterfaceOrientations() : UIInterfaceOrientationMask {
		return UIInterfaceOrientationMask(rawValue: (UIInterfaceOrientationMask.portrait.rawValue)
			| Int(UIInterfaceOrientationMask.landscapeLeft.rawValue))
	}
}

