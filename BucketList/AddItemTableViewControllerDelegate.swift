//
//  AddItemTableViewControllerDelegate.swift
//  BucketList
//
//  Created by Ruben Duran on 7/10/17.
//  Copyright © 2017 RD. All rights reserved.
//

import Foundation

protocol AddItemTableViewControllerDelegate {
    func itemSaved(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?)
    func cancelButtonPressed(by controller: AddItemTableViewController)
}
