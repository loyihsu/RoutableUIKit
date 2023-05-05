# RoutableUIKit

A simple router that allows routing behaviour from UIKit.

```swift
enum HomeRouter: RouterProtocol {
    case nextPage(someViewModel: ViewModel)

    var targetViewController: UIViewController {
        switch self {
        case let .nextPage(someViewModel):
            let viewController = SomeViewController(viewModel: someViewModel)
            return viewController
        }
    }
}
```

Using the router defined above, you can navigate to the page in the view controller:

```swift

class HomeViewController: UIViewController {
    // ...
    
    @objc private func goToNextPage() {
        let viewModel = SomeViewModel()
        navigate(with: HomeRouter.nextPage(someViewModel: viewModel))
    }
}
