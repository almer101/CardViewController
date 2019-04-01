import UIKit

extension UIViewController {
    
    func addCardViewController<T: CardViewController>(ofType type: T.Type) {
        let cardViewController = T()
        
        addChild(cardViewController)
        view.addSubview(cardViewController.view)
        
        cardViewController.view.translatesAutoresizingMaskIntoConstraints = false
        cardViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        cardViewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        cardViewController.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15).isActive = true
        cardViewController.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: Constants.shared.preferredCardViewBottomInset).isActive = true
        
        cardViewController.didMove(toParent: self)
    }
}
