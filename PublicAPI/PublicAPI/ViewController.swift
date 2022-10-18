//
//  ViewController.swift
//  PublicAPI
//
//  Created by Rushabh Shah on 2022-10-18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_AretData(_ sender: Any) {
        Meme_Helper.fetchDir()
    }
    
    @IBAction func btn_GorestData(_ sender: Any) {
        Grost_Helper.fetchDir()
    }
    @IBAction func btn_MemeData(_ sender: Any) {
    }
}

