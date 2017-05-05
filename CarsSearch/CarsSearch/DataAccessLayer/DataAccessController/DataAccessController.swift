//
//  DataAccessController.swift
//  CarsSearch
//
//  Created by Yahia on 5/5/17.
//  Copyright © 2017 Yahia. All rights reserved.
//

import Foundation

// Desgin Pattern : Singleton
// Description :  This is a Data Access Layer which is the over all applcation data source  

enum DataSources {
    case Onlone
    case DB
}


//MARK: Protocol
protocol DataAccessControllerInterface{
    func getAllCars(completion: ((_ items :NSMutableArray, _ statusCode  : Int) -> Void)?)
}

//MARK: Class

class DataAccessController {
    
    //Singleton Access
    static let sharedInstance = DataAccessController()

    
    //Variables
    private var dataSourceType: DataSources = DataSources.Onlone
    private var dataSource: DataAccessControllerInterface?
    
    var onlineController:OnlineController!
    var dbController:DBController!
       
    //Init and Init Helpers
    private init() {
        onlineController = OnlineController()
        dbController = DBController()
    }
    
    
    func dataSourceForType(source: DataSources) -> DataAccessControllerInterface?{
        switch source {
        case DataSources.Onlone:
            return onlineController
        case DataSources.DB:
            return dbController
        }
    }
    
    func setNewDataSource(source: DataSources) {
        self.dataSourceType = source
        self.dataSource = dataSourceForType(source: source)
    }
    // MARK:- Getting Data 
    
    func getAllCars(completion: ((NSMutableArray, Int) -> Void)?) {
        self.dataSource?.getAllCars(completion: completion)
    }
    
}
