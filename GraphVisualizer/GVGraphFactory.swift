//
//  GVGraphFactory.swift
//  GraphVisualizer
//
//  Created by Richard Tolley on 07/08/2014.
//  Copyright (c) 2014 Richard Tolley. All rights reserved.
//

import UIKit

class GVGraphFactory: NSObject {
   
    var nodeRequester : GVNodeRequester?
    
    func generateGraphWithStartLocation(startLocation : NSString,completion : (GVGraph) -> Void)
    {
        let graph : GVGraph = GVGraph()
        
        self.nodeRequester = GVNodeRequester(baseURLString:"http://labyrinth.digitaslbi.com")
        
        self.nodeRequester?.loadNode(startLocation, callback: { (node) -> Void in
            
            graph.addNode(node)
            
            for exitLocation in node.exits {
                
                if !graph.containsNodeWithId(exitLocation as NSString) {
                    
                    
                }
            }
        })
        
    }
    
    
    
}
