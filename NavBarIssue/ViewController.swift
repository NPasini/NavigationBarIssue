//
//  MyViewController.swift
//  test
//
//  Created by Nicolò Pasini on 19/07/22.
//

import UIKit
import SwiftUI

class MyViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var containerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let childController = UIHostingController(
            rootView: Text("Title")
        )

        // Uncomment following lines to check that in UIKit the issue is not present
//        let childController = UIViewController()

        addChild(childController)

        childController.view.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(childController.view)
        NSLayoutConstraint.activate([
            childController.view.topAnchor.constraint(equalTo: containerView.topAnchor),
            childController.view.leftAnchor.constraint(equalTo: containerView.leftAnchor),
            childController.view.rightAnchor.constraint(equalTo: containerView.rightAnchor),
            childController.view.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ])

        childController.didMove(toParent: self)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Uncomment following line to solve the issue with SwiftUI component
//        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}
