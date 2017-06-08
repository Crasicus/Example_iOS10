//
//  ViewController.swift
//  Times Tables
//
//  Created by Local Admin on 11/03/2017.
//  Copyright © 2017 Matt Rogers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var timesTable: UILabel!
    
    @IBAction func sliderChanged(_ sender: Any) {
        
        timesTable.text = String(Int(slider.value)) + " Times Table"
        
        table.reloadData()
        
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return 50
        
    }
 
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        let sliderValue = Int(slider.value)
        
        let indexPath = Int(indexPath.row)
        
        let result = sliderValue * indexPath
        
        cell.textLabel?.text = "\(sliderValue) X \(indexPath) = \(result)"
        
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

