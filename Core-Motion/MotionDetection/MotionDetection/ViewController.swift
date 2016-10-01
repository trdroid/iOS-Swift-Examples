//
//  ViewController.swift
//  MotionDetection
//
//  Created by droid on 2016-09-30.
//  Copyright (c) 2016 droid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	private let motionManager = CMMotionManager()
	private let operationQueue = NSOperationQueue()

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

