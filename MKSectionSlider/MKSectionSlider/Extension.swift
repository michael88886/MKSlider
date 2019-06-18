//
//  Extension.swift
//  MKSectionSlider
//
//  Created by mk mk on 18/6/19.
//  Copyright © 2019 MC2. All rights reserved.
//

import UIKit

// MARK: - UISlider extension
extension UISlider {
	// Show value label (Should call this method in superview's layout subview)
	func addSectionLabel() {
		let start = Int(minimumValue)
		let end = Int(maximumValue)
		for index in start ... end {
			let thumbSize = thumbRect(forBounds: bounds, trackRect: trackRect(forBounds: bounds), value: Float(index))
			let label = sectionLabel(value: index)
			addSubview(label)
			// Align label center with thumb
			let y = -label.frame.height / 2.0
			let x = thumbSize.midX
			label.center = CGPoint(x: x, y: y)
		}
	}
	
	// Section label factory
	private func sectionLabel(value: Int) -> UILabel {
		let label = UILabel(frame: CGRect(origin: .zero, size: CGSize(width: 20, height: 20)))
		label.textAlignment = .center
		label.backgroundColor = .clear
		label.text = String(value)
		return label
	}
}
