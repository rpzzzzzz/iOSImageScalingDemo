//
//  ViewController.swift
//  ImageScaling
//
//  Created by Suraphan Laokondee on 11/22/2559 BE.
//  Copyright © 2559 Suraphan Laokondee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


@IBDesignable
class IBDesignableView: UIView {
}

@IBDesignable
class IBDesignableButton: UIButton {
}

@IBDesignable
class IBDesignableImageView: UIImageView {
}

@IBDesignable
class IBDesignableLabel: UILabel {
}

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            if let cgColor = layer.borderColor {
                return UIColor(cgColor: cgColor)
            } else { return .none }
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
}
