//
//  OnlineController.swift
//  CarsSearch
//
//  Created by Yahia on 5/5/17.
//  Copyright © 2017 Yahia. All rights reserved.
//

import Foundation
class OnlineController:NSObject,DataAccessControllerInterface{
    func getCars(withFilter filter : Filter, completion: ((NSMutableArray, String?) -> Void)?) {
       CarsDataFetcher().getCars(withFilter: filter, completion: completion)
    }
    
}
