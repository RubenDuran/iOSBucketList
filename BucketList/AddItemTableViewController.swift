//
//  AddItemTableViewController.swift
//  BucketList
//
//  Created by Ruben Duran on 7/10/17.
//  Copyright © 2017 RD. All rights reserved.
//

import UIKit
import CoreData

class AddItemTableViewController: UITableViewController {
    
    
    var delegate: AddItemTableViewControllerDelegate?
    var item: String?
    var indexPath: NSIndexPath?
    
    @IBOutlet weak var itemTextField: UITextField!
    
    @IBAction func savedButtonPressed(_ sender: UIBarButtonItem) {
        let text = itemTextField.text!
        delegate?.itemSaved(by: self, with: text, at: indexPath);
    }
    
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self);
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        itemTextField.text = item
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
