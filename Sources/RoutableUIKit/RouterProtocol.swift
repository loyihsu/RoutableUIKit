//
//  RouterProtocol.swift
//  RoutableUIKit
//
//  Created by Loyi Hsu on 2023/5/5.
//

import UIKit

public protocol RouterProtocol {
    var targetViewController: UIViewController { get }
}

public extension RouterProtocol {
    func navigate(from viewController: UIViewController) {
        viewController.show(targetViewController, sender: viewController)
    }

    func navigateWithNavigationController(from viewController: UIViewController) {
        let navigationController = UINavigationController(
            rootViewController: targetViewController
        )
        viewController.show(navigationController, sender: viewController)
    }
}
