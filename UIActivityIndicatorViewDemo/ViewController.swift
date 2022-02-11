//
//  ViewController.swift
//  UIActivityIndicatorViewDemo
//
//  Created by 竣亦 on 2022/2/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var upIndicator: UIActivityIndicatorView!
    @IBOutlet weak var downIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // upIndicator
        upIndicator.style = .medium
        upIndicator.hidesWhenStopped = true
        upIndicator.startAnimating()
        self.upIndicator.color = .blue
        
        Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { Timer in
            self.upIndicator.stopAnimating()
        }
        
        
        // downIndicator
        downIndicator.style = .large
        downIndicator.hidesWhenStopped = false
        downIndicator.color = .red
        self.downIndicator.startAnimating()
        
        Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { Timer in
            self.downIndicator.stopAnimating()
        }
    }


    
}

