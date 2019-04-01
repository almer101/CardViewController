import UIKit

class DealCardViewController: CardViewController {
    
    private let tableView = UITableView()
    private let dealCardHeaderView = DealCardHandleAreaView()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }
    
    public init() {
        super.init(nibName: nil, bundle: nil)
        contentView = tableView
        headerView = dealCardHeaderView
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .clear
    }

}

extension DealCardViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = "Hello \(indexPath.row)"
        cell.textLabel?.textColor = UIColor(red: 254.0 / 255.0, green: 174.0 / 255.0, blue: 5.0 / 255.0, alpha: 1)
        cell.contentView.backgroundColor = UIColor(red: 33.0 / 255.0, green: 35.0 / 255.0, blue: 42.0 / 255.0, alpha: 1)
        return cell
    }
}

extension DealCardViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

