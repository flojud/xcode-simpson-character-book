//
//  ViewController.swift
//  Simpsons Character Book
//
//  Created by Florian Jud on 22.03.17.
//  Copyright © 2017 Florian Jud. All rights reserved.
//

import UIKit

class tableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var mySimpsons = [Simpson]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TableView Setup
        tableView.delegate = self
        tableView.dataSource = self
        
        
        //Erstelle die Simpsons
        let homer = Simpson()
        homer.name = "Homer Simpson"
        homer.occupation = "Nuclear Safety Inspector"
        homer.image = UIImage(named: "homer.png")!
        mySimpsons.append(homer)
        
        let bart = Simpson()
        bart.name = "Bart Simpson"
        bart.occupation = "Student"
        bart.image = UIImage(named: "bart.png")!
        mySimpsons.append(bart)
        
        let marge = Simpson()
        marge.name = "Marge Simpson"
        marge.occupation = "Homermaker"
        marge.image = UIImage(named: "marge.png")!
        mySimpsons.append(marge)
   
        let ned = Simpson()
        ned.name = "Ned Flanders"
        ned.occupation = "Pharmacist"
        ned.image = UIImage(named: "ned.png")!
        mySimpsons.append(ned)
        
    }
    
    //number of rows in section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    //cell for row at index path
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }

}

