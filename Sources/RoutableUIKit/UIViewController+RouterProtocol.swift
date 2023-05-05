//
//  UIViewController+RouterProtocol.swift
//  RoutableUIKit
//
//  Created by Loyi Hsu on 2023/5/6.
//

import UIKit

public extension UIViewController {
    func navigate(with router: RouterProtocol) {
        router.navigate(from: self)
    }
    
    func navigateWithNavigationController(with router: RouterProtocol) {
        router.navigateWithNavigationController(from: self)
    }
}
