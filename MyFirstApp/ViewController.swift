//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Jackei Wong on 5/11/2016.
//  Copyright © 2016 Jackei Wong. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    @IBOutlet var quoteLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    
    @IBAction func whoSaidThisButtonTapper(sender: AnyObject) {
        if let url = URL(string: "https://www.ted.com/talks/simon_sinek_how_great_leaders_inspire_action") {
            let safariViewController = SFSafariViewController(url:url)
            present(safariViewController, animated: true, completion: nil)
        }
    }
    
    @IBAction func shareQuote(sender: AnyObject) {
        let textToShare = quoteLabel.text ?? ""
        let activityViewController = UIActivityViewController(activityItems: [textToShare], applicationActivities: nil)
        present(activityViewController, animated: true, completion: nil)
    }
}

