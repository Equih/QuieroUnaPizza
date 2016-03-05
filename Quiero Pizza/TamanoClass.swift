//
//  TamanoClass.swift
//  Quiero Pizza
//
//  Created by Leonardo Adolfo Garcia E. on 05/03/16.
//  Copyright © 2016 Equih. All rights reserved.
//

import UIKit

class TamanoClass: UIViewController {
    
    @IBOutlet weak var lblTamano: UILabel!
    var tamano : String = "Ninguno"
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SelectChica(sender: AnyObject) {
        tamano = "Chica"
        self.lblTamano.text = tamano
    }
    
    @IBAction func SelectMediana(sender: AnyObject) {
        tamano = "Mediana"
        self.lblTamano.text = tamano
    }
    
    @IBAction func SelectGrande(sender: AnyObject) {
        tamano = "Grande"
        self.lblTamano.text = tamano
    }

    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if (tamano == "Ninguno"){
            let alert = UIAlertController(title: "Sin tamaño", message:"Seleccione tamaño para continuar", preferredStyle: .Alert)
            alert.addAction(UIAlertAction(title: "OK", style: .Default) { _ in })
            self.presentViewController(alert, animated: true){}
            
            return false
        }
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let SigVista = segue.destinationViewController as! MasaClass
        SigVista.tamano2 = tamano
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
