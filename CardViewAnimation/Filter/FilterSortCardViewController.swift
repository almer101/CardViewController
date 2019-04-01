import UIKit

class FilterSortCardViewController: CardViewController {
    
    private let tableView = UITableView()
    private let filterCardHeaderView = DealCardHandleAreaView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        contentView = tableView
        headerView = nil
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
    }
    
}

extension FilterSortCardViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.contentView.backgroundColor = .blueGrayish
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = RefinementTableHeaderView(with: section == 0 ? .filter : .sort)
        view.frame = CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 50)
        return view
    }
    
}

extension FilterSortCardViewController: UITableViewDelegate {
    
}
