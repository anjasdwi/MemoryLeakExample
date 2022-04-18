//
//  SecondViewController.swift
//  MemoryLeakSample
//
//  Created by Engineer on 16/04/22.
//

import UIKit

// Protocol
protocol SecondViewControllerViewModelDelegate {
    func reloadView()
}

// View Model
struct SecondViewControllerViewModel {
    
    // Strong reference
    var secondViewControllerDelegate: SecondViewControllerViewModelDelegate?
    
    func fetchData() {
        // For example, here is the fetch proses
        // and reload view after data is received
        secondViewControllerDelegate?.reloadView()
    }
}

// View Controller
class SecondViewController: UIViewController {
    
    var viewModel = SecondViewControllerViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        title = "Second"
        
        // Assigning class instance to property view model
        viewModel.secondViewControllerDelegate = self
    }
}

extension SecondViewController: SecondViewControllerViewModelDelegate {
    func reloadView() {
        print("reload view here! after data is received")
    }
}
