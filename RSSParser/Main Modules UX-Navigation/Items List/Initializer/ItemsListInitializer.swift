//
//  ItemsListInitializer.swift
//  RSSParser
//
//  Created by a_ildarkin on 25/11/2019.
//  Copyright © 2019 kwork-test. All rights reserved.
//

import Foundation

class ItemsListInitializer: NSObject {
    // TODO: Rename ViewController, please
    @IBOutlet weak var itemsListVC: ViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let configurator = ItemsListConfigurator()
        configurator.configureModuleForViewInput(viewInput: itemsListVC)
    }
}

private class ItemsListConfigurator: NSObject {
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? ViewController {
            configure(viewController: viewController)
        }
    }
    
    private func configure(viewController: ViewController) {
        let router = ItemsListRouter()
        
        let presenter = ItemsListPresenter()
        presenter.view = viewController as? ItemsListViewInput
        presenter.router = router
        
        let interactor = ItemsListInteractor()
        interactor.output = presenter
        //TODO: add services (fetching and saving data). User abstraction!
        
        presenter.interactor = interactor
        viewController.output = presenter
    }
}
