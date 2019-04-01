import UIKit

class DealCardHandleAreaView: UIView {
    
    private let stackView = UIStackView()
    private let titleLabel = UILabel()
    private let descriptionLabel = UILabel()
    private let imageView = UIImageView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupUI()
        setupConstraints()
    }
    
    private func setupUI() {
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .leading
        stackView.spacing = 2
        
        titleLabel.font = UIFont.boldSystemFont(ofSize: 27)
        titleLabel.textColor = .white
        titleLabel.text = "Deal"
        
        descriptionLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        descriptionLabel.textColor = UIColor.darkYellow
        descriptionLabel.text = "Buy item from this person"
        
        imageView.image = UIImage(named: "Deal-Card-Handshake-Icon")?.withRenderingMode(.alwaysTemplate)
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
    }
    
    private func setupConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Add imageView
        
        addSubview(imageView)
        var constraints = [
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
        
        // Add stackView
        
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(descriptionLabel)
        
        addSubview(stackView)
        
        constraints = [
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: imageView.leadingAnchor),
            stackView.centerYAnchor.constraint(equalTo: imageView.centerYAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
}
