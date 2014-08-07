//
//  ViewController.swift
//  GraphVisualizer
//
//  Created by Richard Tolley on 07/08/2014.
//  Copyright (c) 2014 Richard Tolley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var nodeRequester = GVNodeRequester(baseURLString: "http://labyrinth.digitaslbi.com")
        
        let urlString = "Maze/Location/easy/start/json"
        
        nodeRequester.loadNode(urlString, callback: {
            (node :GVGraphNode) in println(node.locationType)
        })
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

