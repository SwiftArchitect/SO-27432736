//
//  ViewController.swift
//  SO-27432736
//
//  Created by Xavier Schott on 3/19/17.
//  Copyright © 2017 SwiftArchitect. All rights reserved.
//

import UIKit

    @IBDesignable
    class ViewController: UIViewController {

        enum StatusShape:Int {
            case Rectangle
            case Triangle
            case Circle
        }

        // Programmatically: use the enum
        @IBInspectable var shape:StatusShape = .Rectangle // Not available in IB, despite `@IBInspectable`

        // IB: use the adapter
        @IBInspectable var shapeAdapter:Int {
            get {
                return self.shape.rawValue
            }
            set( shapeIndex) {
                self.shape = StatusShape(rawValue: shapeIndex) ?? .Rectangle
            }
        }
    }

