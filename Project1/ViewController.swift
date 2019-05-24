//
//  ViewController.swift
//  Project1
//
//  Created by Dyana Monroy on 2/14/19.
//  Copyright © 2019 Dyana Monroy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textlabel: UILabel!
    
    var istyping = false
    var firstn : Double? = 0
    var secondn: Double? = 0
    var operation = ""
    @IBOutlet weak var dec: UIButton!
    
    @IBAction func numbers(_ sender: UIButton) {
        let  n = sender.currentTitle!
        if istyping {
            textlabel.text = textlabel.text! + n
            if (textlabel.text?.contains("."))! {
            dec.isEnabled = false
        }
        }
            /* else if (textlabel.text?.contains("."))!{
             dec.isEnabled = true
             }*/
            
        else {
            textlabel.text = n
            istyping = true
        
            dec.isEnabled = true
        
    }
            
        
        
    }
    
    
    @IBAction func operations(_ sender: UIButton) {
        istyping = false
        firstn = Double(textlabel.text!)
        operation = sender.currentTitle!
        if operation == "%"{
            textlabel.text = String(firstn! * 0.01)
            
            // textlabel.text = "\(a)"
        }
        else if operation == "+/-" {
            textlabel.text = String(firstn! * -1)
        }
        else if operation == "C" {
            
            
            textlabel.text = "";
            firstn! = 0;
            secondn! = 0;
            operation = "";
            istyping = false;
            ans = 0;
        }
    }
    
    // var a : Double = 0
    var ans : Double = 0
    @IBAction func equal(_ sender: UIButton) {
        
        
        secondn = Double(textlabel.text!)
        istyping = false
        if operation == "+" {
            textlabel.text = String(firstn! + secondn!)
        }
        else if operation == "-" {
            textlabel.text = String(firstn! - secondn!)
        }
        else if operation == "X"{
            textlabel.text = String(firstn! * secondn!)
        }
        else if operation == "/"  {
            if secondn! == 0 && firstn! != 0{
                let alert = UIAlertController (title: "Error", message:"Can't divide by zero", preferredStyle: .alert)
                let cancel = UIAlertAction (title: "Cancel", style: .cancel, handler: nil)
                alert.addAction(cancel)
                present(alert, animated: true)
                
            }
                
            else{
                textlabel.text = String(firstn! / secondn!)
            }
        }
        else if operation == "+/-"{
            textlabel.text = String(firstn! * -1)
        }
            
            
       // else if operation == "C" {
            
            
         //   textlabel.text = "";
         //   firstn! = 0;
         //   secondn! = 0;
         //   operation = "";
          //  istyping = false;
          //  ans = 0;
            
       // }
       // textlabel.text = "\(ans)";
    }
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // dec.isEnabled = true 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

