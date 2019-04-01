import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let visualEffectView: UIVisualEffectView = {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
        view.isUserInteractionEnabled = false
        view.translatesAutoresizingMaskIntoConstraints = false
        view.alpha = 0
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = .white
        tableView.layer.masksToBounds = true
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .blueGrayishDark
        navigationItem.title = "Title"

        addCardViewController(ofType: DealCardViewController.self)
    }

}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = "Hello \(indexPath.row)"
        cell.textLabel?.textColor = UIColor(red: 254.0 / 255.0, green: 174.0 / 255.0, blue: 5.0 / 255.0, alpha: 1)
        cell.contentView.backgroundColor = .blueGrayishDark
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIViewController()
        vc.view.backgroundColor = .blue
        navigationController?.pushViewController(vc, animated: true)
    }
}
