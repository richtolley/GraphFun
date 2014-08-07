//
//  GVGraphNode.swift
//  GraphVisualizer
//
//  Created by Richard Tolley on 07/08/2014.
//  Copyright (c) 2014 Richard Tolley. All rights reserved.
//

import UIKit

enum LocationType {
    case LocationTypeStart
    case LocationTypeExit
    case LocationTypeNormal
    case LocationTypePowerPill
    case LocationTypeNone
    
    func generateLocationType(locationString : NSString) -> LocationType
    {
        var rVal : LocationType = LocationTypeNone
        
        switch(locationString)
        {
            case "Start": rVal = LocationTypeStart
            case "Exit": rVal = LocationTypeExit
            case "PowerPill": rVal = LocationTypePowerPill
            case "Normal": rVal = LocationTypeNormal
            default : LocationTypeNone //redundant
        }
        
        return rVal
    }
}

/**
 * Model class which represents a single graph node
 */

class GVGraphNode: NSObject {
    let locationId : NSString
    var exits : NSArray
    let locationType : NSString
    
    init(dict: NSDictionary) {
        
        var locString : NSString = ""
        
        self.locationId = dict["LocationId"] as NSString
        self.exits = dict["Exits"] as NSArray
        self.locationType = dict["LocationType"] as NSString
        
        //self.locationType = LocationType.generateLocationType(locString)
    }
    
    
}
