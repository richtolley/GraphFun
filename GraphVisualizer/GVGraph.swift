//
//  GVGraph.swift
//  GraphVisualizer
//
//  Created by Richard Tolley on 07/08/2014.
//  Copyright (c) 2014 Richard Tolley. All rights reserved.
//

import UIKit

/**
 * Model object representing a single graph
 */

class GVGraph: NSObject {
   
    var allNodes : NSMutableDictionary
    
    override init()
    {
        self.allNodes = NSMutableDictionary()
    }
    
    func addNode(newNode :GVGraphNode)
    {
        self.allNodes[newNode.locationId] = newNode
        
        for nodeId in newNode.exits {
            
        }
        
    }
    
    func containsNodeWithId(locationId : NSString) -> Bool
    {
        var rVal : Bool = false
        var node : GVGraphNode = self.allNodes[locationId] as GVGraphNode
        
        if(node != nil)
        {
            rVal = true
        }
        return rVal
    }
}
