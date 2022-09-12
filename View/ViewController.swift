//
//  ViewController.swift
//  UpdateFruitViewController
//
//  Created by admin on 12/09/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var fruitTable: UITableView!
    private var fruilt = [FruiltData]()
    private lazy var persenter = Presenter(with: self)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTable()
        persenter.loadData()
    }
    private func setupTable(){
        fruitTable.delegate = self
        fruitTable.dataSource = self
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruilt.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = fruitTable.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ListFruitCell
        let item = fruilt[indexPath.row]
        cell.lbNamefruilt.text = item.name
        return cell
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        fruitTable.deselectRow(at: indexPath, animated: true)
        let vc = UpdateFruiltViewController.instance(data: fruilt[indexPath.row])
        //vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension ViewController: PresenterDelegate {
    func UpdatTable(data: [FruiltData]) {
        self.fruilt = data
        DispatchQueue.main.async {
            self.fruitTable.reloadData()
        }
       
    }
}
//extension ViewController: UpdateFruiltViewdelegate {
//    func updateFruiltViewController(_ vc: UpdateFruiltViewController) {
//        <#code#>
//    }
//
//
//}
