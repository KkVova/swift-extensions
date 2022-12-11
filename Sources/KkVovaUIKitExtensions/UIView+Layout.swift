//
//  UIView+Layout.swift
//  swift-extensions
//
//  Created by Vova Badyaev on 11.12.2022.
//

import UIKit

public extension UIView {
    func anchor(top: NSLayoutYAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil,
                centerX: NSLayoutXAxisAnchor? = nil, centerY: NSLayoutYAxisAnchor? = nil,
                leading: NSLayoutXAxisAnchor? = nil, trailing: NSLayoutXAxisAnchor? = nil,
                padding: UIEdgeInsets = .zero, size: CGSize = .zero) {
        self.translatesAutoresizingMaskIntoConstraints = false

        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        if let centerX = centerX {
            self.centerXAnchor.constraint(equalTo: centerX).isActive = true
        }
        if let centerY = centerY {
            self.centerYAnchor.constraint(equalTo: centerY).isActive = true
        }
        if let leading = leading {
            self.leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        if let trailing = trailing {
            self.trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }

        if size.width != 0 {
            self.widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        if size.height != 0 {
            self.heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }

    func fillSuperview(withPadding padding: UIEdgeInsets = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        guard let svTop = superview?.topAnchor,
              let svBottom = superview?.bottomAnchor,
              let svLeading = superview?.leadingAnchor,
              let svTrailing = superview?.trailingAnchor else {
            return
        }

        anchor(top: svTop, bottom: svBottom, leading: svLeading, trailing: svTrailing, padding: padding)
    }
}
