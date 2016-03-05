//
//  MasaClass.swift
//  Quiero Pizza
//
//  Created by Leonardo Adolfo Garcia E. on 05/03/16.
//  Copyright © 2016 Equih. All rights reserved.
//

import UIKit

class MasaClass: UIViewController {
    
    var masa : String = "Ninguna"
    var tamano2 : String = "NULL"
    
    @IBOutlet weak var lblMasa: UILabel!
    

    /////////////////////////METHODS/////////////////////////////////
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SelectDelgada(sender: AnyObject) {
        masa = "Delgada"
        self.lblMasa.text = masa
    }
    
    @IBAction func SelectCrujiente(sender: AnyObject) {
        masa = "Crujiente"
        self.lblMasa.text = masa
    }
    
    @IBAction func SelectGruesa(sender: AnyObject) {
        masa = "Gruesa"
        self.lblMasa.text = masa
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if (masa == "Ninguna"){
            let alert = UIAlertController(title: "Sin masa", message:"Seleccione una masa para continuar", preferredStyle: .Alert)
            alert.addAction(UIAlertAction(title: "OK", style: .Default) { _ in })
            self.presentViewController(alert, animated: true){}
            
            return false
        }
        return true
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let SigVista = segue.destinationViewController as! QuesoClass
        SigVista.tamano3 = tamano2
        SigVista.masa2 = masa
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
