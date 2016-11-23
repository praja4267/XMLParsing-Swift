//
//  ViewController.swift
//  XMLParsingSwift
//
//  Created by Active Mac05 on 11/05/16.
//  Copyright © 2016 techactive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var parser = NSXMLParser()
    var posts = NSMutableArray()
    var elements = NSMutableDictionary()
    var element = NSString()
    var title1 = NSMutableString()
    var date = NSMutableString()
    
      //  - See more at: http://www.theappguruz.com/blog/xml-parsing-using-nsxmlparse-swift#sthash.Z66twFuT.dpuf
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func beginParsing()
    {
        posts = []
        parser = NSXMLParser(contentsOfURL:(NSURL(string:"http://images.apple.com/main/rss/hotnews/hotnews.rss"))!)!
        parser.delegate = self
        parser.parse()
        tbData!.reloadData()
    }

}

