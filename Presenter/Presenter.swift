//
//  Presenter.swift
//  UpdateFruitViewController
//
//  Created by admin on 12/09/2022.
//

import Foundation

protocol PresenterDelegate: AnyObject {
    func UpdatTable(data: [FruiltData])
}
class Presenter {
    private  var fruilt = [FruiltData]()
    private weak var  view: PresenterDelegate?
    init(with view: PresenterDelegate ) {
        self.view = view
    }
    func loadData(){
        let f1 = FruiltData(name:"Cam", price: 123)
        let f2 = FruiltData(name: "chuoi", price: 11)
        self.fruilt.append(f1)
        self.fruilt.append(f2)
        view?.UpdatTable(data: fruilt)
    }
}
