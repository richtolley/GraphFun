//
//  GVGraphFactory.swift
//  GraphVisualizer
//
//  Created by Richard Tolley on 07/08/2014.
//  Copyright (c) 2014 Richard Tolley. All rights reserved.
//

import UIKit

class GVGraphFactory: NSObject {
   
    func generateGraphWithStartLocation(startLocation : NSString,completion : (GVGraph) -> Void)
    {
        let graph : GVGraph = GVGraph()
        
        let nodeRequester = GVNodeRequester(baseURLString:"http://labyrinth.digitaslbi.com")
        
        nodeRequester.loadNode(startLocation, callback: { (node) -> Void in
            
            
            
        })
        
    }
    
}
