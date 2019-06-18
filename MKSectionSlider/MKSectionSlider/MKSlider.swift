//
//  MKSlider.swift
//  MKSectionSlider
//
//  Created by mk mk on 18/6/19.
//  Copyright © 2019 MC2. All rights reserved.
//

import UIKit

 class MKSlider: UIView {
	
	// MARK: - Properties
	// - Variables
	// Number of section
	private var sections: Int = 1
	// Start value
	private var startValue: Int = 0
		
	// MARK: - Views
	private lazy var slider: UISlider = {
		let sli = UISlider()
		sli.isContinuous = false
		sli.clipsToBounds = false
		sli.addTarget(self, action: #selector(updateSliderValue(_:)), for: .valueChanged)
		return sli
	}()
	
	// MARK: - Custom init
	convenience init(sections: Int, startValue: Int) {
		self.init()
		self.sections = sections
		self.startValue = startValue
		setup()
	}
}

// MARK: - Public functions
extension MKSlider {
	
	override func layoutSubviews() {
		super.layoutSubviews()
		slider.addSectionLabel()
	}
}

// MARK: - Private functions
extension MKSlider {
	// Setup section slider
	private func setup() {
		backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
		
		// Slider
		slider.backgroundColor = .orange
		slider.minimumValue = Float(self.startValue)
		slider.maximumValue = Float(self.startValue + self.sections)
		slider.translatesAutoresizingMaskIntoConstraints = false
		addSubview(slider)
		slider.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
		slider.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
		slider.topAnchor.constraint(equalTo: centerYAnchor).isActive = true
	}
	
	@objc private func updateSliderValue(_ slider: UISlider) {
		// Auto round to nearest int value
		let finalInt = Int(slider.value.rounded())
		slider.setValue(Float(finalInt), animated: true)
	}
}
