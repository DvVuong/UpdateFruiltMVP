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
        print("asds")
    }
    
    
    static func instance() -> UpdateFruiltViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "UpdateFruilt") as! UpdateFruiltViewController
        return vc
        

    
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    

}
