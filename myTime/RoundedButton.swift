//
//  RoundedButton.swift
//  myTime
//
//  Created by Luigi Cerrato on 05/12/2019.
//  Copyright © 2019 Luigi Cerrato. All rights reserved.
//


    import UIKit

    @IBDesignable
    class RoundedButton: UIButton {

        @IBInspectable
        var cornerRadius: CGFloat = 30 {
            didSet {
                setupCorners()
            }
        }
        override init(frame: CGRect) {
            super.init(frame: frame)
            setupCorners()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            setupCorners()
        }
        
        override func prepareForInterfaceBuilder() {
            setupCorners()
        }
        
        func setupCorners() {
            layer.cornerRadius = cornerRadius
        }
    }
