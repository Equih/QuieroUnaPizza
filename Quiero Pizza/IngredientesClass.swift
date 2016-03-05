//
//  IngredientesClass.swift
//  Quiero Pizza
//
//  Created by Leonardo Adolfo Garcia E. on 05/03/16.
//  Copyright © 2016 Equih. All rights reserved.
//

import UIKit

class IngredientesClass: UIViewController {

    @IBOutlet weak var lblIngredientes: UILabel!
    
    var ingredientes = [String]()
    var tamano4 : String = "NULL"
    var masa3 : String = "NULL"
    var queso2 : String = "NULL"
    
    
    ////////////////////////////////////// METHODS ///////////////////////////////////////////
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func agregarIngrediente(ingrediente: String){
        if ( ingredientes.contains(ingrediente) ){
            let alert = UIAlertController(title: "Ya seleccionado", message:"Este ingrediente ya ha sido selecionado", preferredStyle: .Alert)
            alert.addAction(UIAlertAction(title: "OK", style: .Default) { _ in })
            self.presentViewController(alert, animated: true){}
        }else if(ingredientes.count < 5){
            ingredientes.append(ingrediente)
        }else{
            ingredientes.removeLast()
            ingredientes.append(ingrediente)
        }
        self.lblIngredientes.text = ingredientes.joinWithSeparator(",")
    }
    
    
    @IBAction func borrar(sender: AnyObject) {
        if(ingredientes.count != 0 ){
            self.ingredientes.removeLast()
            self.lblIngredientes.text = ingredientes.joinWithSeparator(",")
        }else{
            let alert = UIAlertController(title: "Vacio", message:"No se pueden borrar más elementos", preferredStyle: .Alert)
            alert.addAction(UIAlertAction(title: "OK", style: .Default) { _ in })
            self.presentViewController(alert, animated: true){}
        }
        
        
    }

 
    @IBAction func agregarJamon(sender: AnyObject) {
        agregarIngrediente("Jamon")
    }
    @IBAction func agregarPeperoni(sender: AnyObject) {
        agregarIngrediente("Pepperoni")
    }
    @IBAction func agregarPavo(sender: AnyObject) {
        agregarIngrediente("Pavo")
    }
    @IBAction func agregarSalchicha(sender: AnyObject) {
        agregarIngrediente("Salchicha")
    }
    @IBAction func agregarAceituna(sender: AnyObject) {
        agregarIngrediente("Aceituna")
    }
    @IBAction func agregarCebolla(sender: AnyObject) {
        agregarIngrediente("Cebolla")
    }
    @IBAction func agreagrPimiento(sender: AnyObject) {
        agregarIngrediente("Pimiento")
    }
    @IBAction func agregarPiña(sender: AnyObject) {
        agregarIngrediente("Piña")
    }
    @IBAction func agregarAnchoa(sender: AnyObject) {
        agregarIngrediente("Anchoa")
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if (ingredientes.count == 0){
            let alert = UIAlertController(title: "Vacio", message:"Seleccione un ingrediente al menos", preferredStyle: .Alert)
            alert.addAction(UIAlertAction(title: "OK", style: .Default) { _ in })
            self.presentViewController(alert, animated: true){}
            
            return false
        }
        return true
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let SigVista = segue.destinationViewController as! VistaFinal
        SigVista.tamano5 = tamano4
        SigVista.masa4 = masa3
        SigVista.queso3 = queso2
        SigVista.ingredientes2 = ingredientes
    }
    
    
    

}
