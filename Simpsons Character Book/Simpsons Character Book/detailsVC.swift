//
//  detailsVC.swift
//  Simpsons Character Book
//
//  Created by Florian Jud on 22.03.17.
//  Copyright © 2017 Florian Jud. All rights reserved.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    
    var selectedSimpson = Simpson()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson.name
        occupationLabel.text = selectedSimpson.occupation
        imageView.image = selectedSimpson.image
        
    }


}
