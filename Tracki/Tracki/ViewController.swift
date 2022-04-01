//
//  ViewController.swift
//  Tracki
//
//  Created by Jonathan Ballona Sanchez on 3/31/22.
//

import UIKit
import PDFNet
import Tools


class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Create a PTDocumentController
        let documentController = PTDocumentController()
        // The PTDocumentController must be in a navigation controller before a document can be opened
        let navigationController = UINavigationController(rootViewController: documentController)
        navigationController.modalPresentationStyle = .fullScreen
        navigationController.navigationBar.isTranslucent = false
        navigationController.toolbar.isTranslucent = false
        // Open a file from URL.
        let fileURL: URL = URL(string:"https://pdftron.s3.amazonaws.com/downloads/pl/sample.pdf")!
        documentController.openDocument(with: fileURL)
        // Show navigation (and document) controller.
        self.present(navigationController, animated: true, completion: nil)
    }


}

