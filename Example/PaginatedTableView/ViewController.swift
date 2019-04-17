//
//  ViewController.swift
//  PaginatedTableView
//
//  Created by Salmaan Ahmed on 04/16/2019.
//  Copyright (c) 2019 Salmaan Ahmed. All rights reserved.
//

import UIKit
import PaginatedTableView

class ViewController: UIViewController {

    var list = [Int]()
    
    // Assign custom class to table view in storyboard
    @IBOutlet weak var tableView: PaginatedTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add paginated delegates only
        tableView.paginatedDelegate = self
        tableView.paginatedDataSource = self
        
        // More settings
        tableView.enablePullToRefresh = true
        
        tableView.loadData(refresh: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

//
// MARK Paginated Delegate - Where magic happens
//
extension ViewController: PaginatedTableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func loadMore(_ pageNumber: Int, _ pageSize: Int, onSuccess: ((Bool) -> Void)?, onError: ((Error) -> Void)?) {
        // Call your api here
        // Send true in onSuccess in case new data exists, sending false will disable pagination
        
        // If page number is first, reset the list
        if pageNumber == 1 { self.list = [Int]() }
        
        // else append the data to list
        let startFrom = (self.list.last ?? 0) + 1
        for number in startFrom..<(startFrom + pageSize) {
            self.list.append(number)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            onSuccess?(true)
        }
    }
}

//
// MARK: Paginated Data Source
//
extension ViewController: PaginatedTableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell else {
            fatalError("The dequeued cell is not an instance of TableViewCell.")
        }
        cell.label.text = "Cell Number: \(self.list[indexPath.row])"
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
