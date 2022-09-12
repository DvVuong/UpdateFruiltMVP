//
//  UpdateFruiltViewController.swift
//  UpdateFruitViewController
//
//  Created by admin on 12/09/2022.
//

import UIKit
protocol UpdateFruiltViewdelegate: AnyObject {
    func updateFruiltViewController(_ vc: UpdateFruiltViewController)
}
class UpdateFruiltViewController: UIViewController, UpdateFruiltPresenterView {
    func updataFruil(data: FruiltData) {
        tfNameFruilt.text = data.name
    }
    static func instance(data: FruiltData ) -> UpdateFruiltViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "UpdateFruilt") as! UpdateFruiltViewController
        vc.presenter = UpdateFruiltPresenter(with: vc, data: data)
        print(data)
        return vc
    }
    @IBOutlet weak var tfNameFruilt: UITextField!
    weak var delegate: UpdateFruiltViewdelegate?
    
    weak var presenter: UpdateFruiltPresenter?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        presenter?.loadData()
    }
}
