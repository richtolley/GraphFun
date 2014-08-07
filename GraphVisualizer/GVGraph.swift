//
//  GVGraph.swift
//  GraphVisualizer
//
//  Created by Richard Tolley on 07/08/2014.
//  Copyright (c) 2014 Richard Tolley. All rights reserved.
//

import UIKit

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
}
