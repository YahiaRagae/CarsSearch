//
//  VehicleTableViewCell.swift
//  CarsSearch
//
//  Created by Yahia on 5/5/17.
//  Copyright © 2017 Yahia. All rights reserved.
//

import Foundation
import UIKit
class VehicleTableViewCell:UITableViewCell{
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblMilage: UILabel!
    @IBOutlet weak var lblMake: UILabel!
    @IBOutlet weak var lblFuelType: UILabel!
    
    @IBOutlet weak var switchFavorite: UISwitch!
}
