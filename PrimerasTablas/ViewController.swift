//
//  ViewController.swift
//  PrimerasTablas
//
//  Created by DAM on 13/12/16.
//  Copyright © 2016 Sheila. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tabla: UITableView!
    
    @IBAction func sliderAccion(_ sender: AnyObject) {
        tabla.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //cuantas filas tiene nuestra columna
        return Int(slider.maximumValue)+1
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //crear una celda
        let miCelda = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "miCelda")
        let resultado:Int = indexPath.row * Int(slider.value)
        let num: Int = Int(slider.value)
        
 miCelda.textLabel?.text = String(indexPath.row) + "*" + String(num) + "=" + String(resultado)
        return miCelda
    }

}

