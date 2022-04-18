//
//  ViewController.swift
//  MemoryLeakSample
//
//  Created by Engineer on 16/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        title = "First"
        
        btnNext.addTarget(
            self,
            action: #selector(goToSecondViewController),
            for: .touchUpInside)
    }
    
    @objc private func goToSecondViewController() {
        let storyboard = UIStoryboard(name: "Second", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "SecondID") as! SecondViewController
        navigationController?.pushViewController(controller, animated: true)
    }
}
