//
//  UIStackView+Stack.swift
//  swift-extensions
//
//  Created by Vova Badyaev on 11.12.2022.
//

import UIKit


public extension UIStackView {
    func HStack(_ views: [UIView],
                spacing: CGFloat = 0,
                alignment: UIStackView.Alignment = .fill,
                distribution: UIStackView.Distribution = .fill,
                padding: UIEdgeInsets = .zero) {
        stack(axis: .horizontal, views: views, spacing: spacing, alignment: alignment, distribution: distribution, padding: padding)
    }

    func HStack(_ views: UIView...,
                spacing: CGFloat = 0,
                alignment: UIStackView.Alignment = .fill,
                distribution: UIStackView.Distribution = .fill,
                padding: UIEdgeInsets = .zero) {
        stack(axis: .horizontal, views: views, spacing: spacing, alignment: alignment, distribution: distribution, padding: padding)
    }

    func VStack(_ views: [UIView],
                spacing: CGFloat = 0,
                alignment: UIStackView.Alignment = .fill,
                distribution: UIStackView.Distribution = .fill,
                padding: UIEdgeInsets = .zero) {
        stack(axis: .vertical, views: views, spacing: spacing, alignment: alignment, distribution: distribution, padding: padding)
    }

    func VStack(_ views: UIView...,
                spacing: CGFloat = 0,
                alignment: UIStackView.Alignment = .fill,
                distribution: UIStackView.Distribution = .fill,
                padding: UIEdgeInsets = .zero) {
        stack(axis: .vertical, views: views, spacing: spacing, alignment: alignment, distribution: distribution, padding: padding)
    }

    private func stack(axis: NSLayoutConstraint.Axis = .vertical, views: [UIView],
                       spacing: CGFloat,
                       alignment: UIStackView.Alignment,
                       distribution: UIStackView.Distribution,
                       padding: UIEdgeInsets) {
        for view in views {
            addArrangedSubview(view)
        }
        self.axis = axis
        self.spacing = spacing
        self.alignment = alignment
        self.distribution = distribution
    }
}
