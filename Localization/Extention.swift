//
//  Extention.swift
//  Localization
//
//  Created by Pathao Ltd on 6/7/23.
//

import UIKit


let LANGUAGE = "bn-BD"//"bn-BD"

extension String {
    var localizedString: String {
        let path = Bundle.main.path(forResource: LANGUAGE,
                                    ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self,
                                 tableName: nil,
                                 bundle: bundle!,
                                 value: "",
                                 comment: "")
    }
}

extension UILabel {
    @IBInspectable var localizedText: String {
        set {
            self.text = newValue.localizedString
        }
        get {
            return self.text ?? ""
        }
    }
}

extension UIButton {
    @IBInspectable var localizedText: String {
        set {
            self.setTitle(newValue.localizedString, for: .normal)
        }
        get {
            return self.titleLabel?.text?.localizedString ?? ""
        }
    }
}

extension UITextField {
    @IBInspectable var localizedPlaceholder: String {
        set {
            self.placeholder = newValue.localizedString
        }
        get {
            return self.placeholder ?? ""
        }
    }
}
