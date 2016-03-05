//
//  VistaFinal.swift
//  Quiero Pizza
//
//  Created by Leonardo Adolfo Garcia E. on 05/03/16.
//  Copyright © 2016 Equih. All rights reserved.
//

import UIKit

class VistaFinal: UIViewController {
    
    var ingredientes2 = [String]()
    var tamano5 : String = "NULL"
    var masa4 : String = "NULL"
    var queso3 : String = "NULL"
    var configuracion = [String]()

    @IBOutlet weak var lblConfiguracion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.configuracion.append(tamano5)
        self.configuracion.append(masa4)
        self.configuracion.append(queso3)
        self.configuracion.appendContentsOf(ingredientes2)
        self.lblConfiguracion.text = configuracion.joinWithSeparator(", ")
    }
    
    @IBAction func Confirmar(sender: AnyObject) {
        let alert = UIAlertController(title: "Confirmado", message:"Su pedido ha sido confirmado", preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "OK", style: .Default) { _ in })
        self.presentViewController(alert, animated: true){}
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
