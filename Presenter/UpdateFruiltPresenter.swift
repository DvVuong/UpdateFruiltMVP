//
//  UpdateFruiltPresenter.swift
//  UpdateFruitViewController
//
//  Created by admin on 12/09/2022.
//

import Foundation
protocol UpdateFruiltPresenterView: AnyObject {
    func updataFruil(data: FruiltData)
}
class UpdateFruiltPresenter {
    private weak var view: UpdateFruiltPresenterView?
    private var data: FruiltData!
    init(with view: UpdateFruiltPresenterView, data: FruiltData) {
        self.view = view
        self.data = data
    }
    func loadData(){
        view?.updataFruil(data:data)
    }
}
