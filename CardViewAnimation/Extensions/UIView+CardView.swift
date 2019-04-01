import UIKit

extension UIView {
    
    var preferredCardViewClosedTransform: CGAffineTransform {
        return CGAffineTransform(translationX: 0, y: (bounds.height - Constants.shared.preferredCardViewTopInset) * Constants.shared.preferredCardViewScreenPortion)
    }
}
