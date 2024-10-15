//
//  ViewController.swift
//  DelegatePrinzip
//
//  Created by Mike Finimento on 03.10.24.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var chooseButton: UIButton!
    
    @IBOutlet weak var house: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height / 4
    }
    
    @IBAction func chooseButtonTapped(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionViewController
        selectionVC.delegate = self
        present(selectionVC, animated: true, completion: nil)
    }

    @IBAction func textButtonTapped(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "WriteAndReadScreen") as! WriteAndReadViewController
        selectionVC.delegate = self
        present(selectionVC, animated: true, completion: nil)
    }
}

extension ViewController: keyDelegate{
    func didTapKey(image: UIImage) {
        house.image = image
    }
    
    func didSetText(text: String){
        mainLabel.text = text
    }
}
