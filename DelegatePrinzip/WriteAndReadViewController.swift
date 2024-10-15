//
//  WriteAndReadViewController.swift
//  DelegatePrinzip
//
//  Created by Mike Finimento on 08.10.24.
//

import UIKit

class WriteAndReadViewController: UIViewController {
    
    var delegate: keyDelegate!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textanzeige: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(textField.hasText)

        // Do any additional setup after loading the view.
    }
    

    @IBAction func close(_ sender: Any) {
        delegate.didSetText(text: textField.text ?? "")
        
        dismiss(animated: true, completion: nil)
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        print(textField.hasText)
        textanzeige.text = textField.text
    }
    
}
