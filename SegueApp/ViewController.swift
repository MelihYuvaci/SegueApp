//
//  ViewController.swift
//  SegueApp
//
//  Created by Melih Yuvacı on 4.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var userName=""

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Lifecycle
        
        print("viewDidLoad function called")
                
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("vieWillDisappear function called")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called")
        nameText.text=""
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear fuunction called")
    }
    
    @IBAction func nextClicked(_ sender: Any) {
        userName=nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            //as (Casting)
            let destinationVC=segue.destination as! SecondViewController
            destinationVC.myName=userName
        }
    }
    
    
}

