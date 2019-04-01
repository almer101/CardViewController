import UIKit

enum RefinementType {
    
    case filter
    case sort
    case none
}

class RefinementTableHeaderView: UIView {

    private let refinementImageView = UIImageView()
    private let refinementLabel = UILabel()
    private var type: RefinementType = .none
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupUI()
        setupConstraints()
    }
    
    init(with type: RefinementType) {
        super.init(frame: CGRect.zero)
        self.type = type
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        refinementImageView.translatesAutoresizingMaskIntoConstraints = false
        refinementLabel.translatesAutoresizingMaskIntoConstraints = false
        
        refinementLabel.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        refinementLabel.textColor = .darkYellow
        
        refinementImageView.tintColor = .darkYellow
        refinementImageView.contentMode = .scaleAspectFit
        
        switch type {
        case .filter:
            refinementLabel.text = "Filters"
            refinementImageView.image = UIImage(named: "Filters-Header-View-Icon")?.withRenderingMode(.alwaysTemplate)
        case .sort:
            refinementLabel.text = "Sort"
            refinementImageView.image = UIImage(named: "Sort-Header-View-Icon")?.withRenderingMode(.alwaysTemplate)
        case .none:
            fatalError("Refinemet header type cannot be none")
        }
    }
    
    private func setupConstraints() {
        addSubview(refinementImageView)
        var constraints = [
            refinementImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            refinementImageView.widthAnchor.constraint(equalToConstant: 20),
            refinementImageView.heightAnchor.constraint(equalToConstant: 20),
            refinementImageView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
        
        addSubview(refinementLabel)
        constraints = [
            refinementLabel.leadingAnchor.constraint(equalTo: refinementImageView.trailingAnchor, constant: 10),
            refinementLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            refinementLabel.centerYAnchor.constraint(equalTo: refinementImageView.centerYAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
}
