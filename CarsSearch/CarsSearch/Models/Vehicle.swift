//
//  Vehicle.swift
//
//  Created by Yahia on 5/5/17
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class Vehicle: NSObject  {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kVehiclesImagesKey: String = "Images"
	internal let kVehiclesIDKey: String = "ID"
	internal let kVehiclesPowerKWKey: String = "PowerKW"
	internal let kVehiclesMakeKey: String = "Make"
	internal let kVehiclesFirstRegistrationKey: String = "FirstRegistration"
	internal let kVehiclesAddressKey: String = "Address"
	internal let kVehiclesMileageKey: String = "Mileage"
	internal let kVehiclesFuelTypeKey: String = "FuelType"
	internal let kVehiclesAccidentFreeKey: String = "AccidentFree"
	internal let kVehiclesPriceKey: String = "Price"


    // MARK: Properties
	public var images: [String]?
	public var iD: Int?
	public var powerKW: Int?
	public var make: String?
	public var firstRegistration: String?
	public var address: String?
	public var mileage: Int?
	public var fuelType: String?
	public var accidentFree: Bool = false
	public var price: Int?


    // MARK: SwiftyJSON Initalizers
    /**
    Initates the class based on the object
    - parameter object: The object of either Dictionary or Array kind that was passed.
    - returns: An initalized instance of the class.
    */
    convenience public init(object: AnyObject) {
        self.init(json: JSON(object))
    }

    /**
    Initates the class based on the JSON that was passed.
    - parameter json: JSON object from SwiftyJSON.
    - returns: An initalized instance of the class.
    */
    public init(json: JSON) {
		images = []
		if let items = json[kVehiclesImagesKey].array {
			for item in items {
				//images?.append( item. )
			}
		} else {
			images = nil
		}
		iD = json[kVehiclesIDKey].int
		powerKW = json[kVehiclesPowerKWKey].int
		make = json[kVehiclesMakeKey].string
		firstRegistration = json[kVehiclesFirstRegistrationKey].string
		address = json[kVehiclesAddressKey].string
		mileage = json[kVehiclesMileageKey].int
		fuelType = json[kVehiclesFuelTypeKey].string
		accidentFree = json[kVehiclesAccidentFreeKey].boolValue
		price = json[kVehiclesPriceKey].int

    }

    

}
