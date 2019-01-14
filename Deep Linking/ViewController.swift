//
//  ViewController.swift
//  Deep Linking
//
//  Created by Prashant G on 1/14/19.
//  Copyright © 2019 Prashant G. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var passDataTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func deepLinkingAction(_ sender: Any) {
        
        let message = passDataTextField.text?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        
        let application = UIApplication.shared
        let secondAppPath = "secondaryAppDL://secondPage?message=\(message ?? "")"
        let appUrl = URL(string: secondAppPath)!
        let websiteUrl = URL(string: "https://www.google.com")!
        
        if application.canOpenURL(appUrl) {
            application.open(appUrl, options: [:], completionHandler: nil)
        }
        else{
            application.open(websiteUrl)
        }
    }
    
}

