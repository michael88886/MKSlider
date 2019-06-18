//
//  ViewController.swift
//  MKSectionSlider
//
//  Created by mk mk on 18/6/19.
//  Copyright © 2019 MC2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		let mkSlider = MKSlider(sections: 4, startValue: 0)
		mkSlider.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(mkSlider)
		mkSlider.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		mkSlider.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
		mkSlider.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
		mkSlider.heightAnchor.constraint(equalToConstant: 100).isActive = true
	}


}

