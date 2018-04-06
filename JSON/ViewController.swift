//
//  ViewController.swift
//  JSON
//
//  Created by Shaun Tucker on 4/5/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = Bundle.main.url(forResource: "practice", withExtension: "json")
        
        if let url = url {
            let data = NSData(contentsOf: url)
            
            if let data = data{
                //print(data)
                
                do {
                    
                    let jsonObject = try JSONSerialization.jsonObject(with: data as Data, options: .allowFragments)
                    
                    //print(jsonObject)
                    if let object = jsonObject as? [String: AnyObject] {
                        if let allCasinos = object["casinos"] as? [[String: AnyObject]] {
                            print(allCasinos)
                        }
                    }
                    
                } catch {
                    
                    print("error occurred")
                }
            }
        }
    }

}

