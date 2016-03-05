//
//  QuesoClass.swift
//  Quiero Pizza
//
//  Created by Leonardo Adolfo Garcia E. on 05/03/16.
//  Copyright © 2016 Equih. All rights reserved.
//

import UIKit

class QuesoClass: UIViewController {
    
    @IBOutlet weak var lblQueso: UILabel!
    
    var queso : String = "Ninguno"
    var tamano3 : String = "NULL"
    var masa2 : String = "NULL"
    
    
    ////////////////////////// METHODS //////////////////////////

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SelectMozzarella(sender: AnyObject) {
        queso = "Mozzarella"
        self.lblQueso.text = queso
    }
    
    @IBAction func SelectCheddar(sender: AnyObject) {
        queso = "Cheddar"
        self.lblQueso.text = queso
    }
    
    @IBAction func SelectParmesano(sender: AnyObject) {
        queso = "Parmesano"
        self.lblQueso.text = queso
    }
    
    @IBAction func SelectSinQueso(sender: AnyObject) {
        queso = "Sin queso"
        self.lblQueso.text = queso
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if (queso == "Ninguno"){
            let alert = UIAlertController(title: "Sin tipo de queso", message:"Seleccione un tipo de queso para continuar", preferredStyle: .Alert)
            alert.addAction(UIAlertAction(title: "OK", style: .Default) { _ in })
            self.presentViewController(alert, animated: true){}
            
            return false
        }
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let SigVista = segue.destinationViewController as! IngredientesClass
        SigVista.tamano4 = tamano3
        SigVista.masa3 = masa2
        SigVista.queso2 = queso
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
