//
//  GVNodeRequester.swift
//  GraphVisualizer
//
//  Created by Richard Tolley on 07/08/2014.
//  Copyright (c) 2014 Richard Tolley. All rights reserved.
//

import Foundation


/**
 * Performs network requests to load node data
 */
class GVNodeRequester: NSObject,NSURLConnectionDelegate,NSURLConnectionDataDelegate {
   
    var data : NSMutableData?
    var callback : ((GVGraphNode)->Void)?
    var baseURLString : NSString
    
    init(baseURLString : NSString) {
        self.baseURLString = baseURLString
    }
    
    
    func loadNode(locationString :NSString,callback :(GVGraphNode)->Void)
    {
        
        let url : NSURL = NSURL(string: self.baseURLString + "/" + locationString)
        println(url)
        let req = NSURLRequest(URL: url)
        self.data = NSMutableData()
        self.callback = callback
        let connection = NSURLConnection(request: req, delegate: self)
        connection.start()
    }
    
    func connection(connection: NSURLConnection!, didFailWithError error: NSError!)
    {
        println(error.localizedDescription)
    }
    
    func connection(connection: NSURLConnection!, didReceiveResponse response: NSURLResponse!)
    {
        println("Response is \(response)")
    }
    
    func connection(connection: NSURLConnection!, didReceiveData data: NSData!)
    {   println("Data received")
        self.data?.appendData(data)
    }
    
    func connectionDidFinishLoading(connection: NSURLConnection!) {
        
        let dataString = NSString(data: self.data, encoding: NSUTF8StringEncoding)
        var jsonObj = NSJSONSerialization.JSONObjectWithData(self.data, options: nil, error: nil) as NSDictionary
        var node : GVGraphNode = GVGraphNode(dict: jsonObj as NSDictionary)
        
        self.callback?(node)
        
        
        
    }
}
