//
//  ViewController.swift
//  Stackoverflow05112020
//
//  Created by Steven Robertson on 5/11/20.
//  Copyright © 2020 Steven Robertson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var myTableView: UITableView!
    
    var tasks = [String]()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            myTableView.delegate = self
            myTableView.dataSource = self
            createTasks()
        }
        
        override func viewWillAppear(_ animated: Bool) {
            myTableView.reloadData()
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return tasks.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let task = tasks[indexPath.row]
            
            let cell = myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyTableViewCell

            cell.delegate = self
            cell.textLabel?.text = task

            return cell
            
        }

        func createTasks() {
            let task1 = "Step one"
            let task2 = "Step two"
            let task3 = "Step three"
            let task4 = "Step four"
            let task5 = "Step five"
            let task6 = "Step six"
            let task7 = "Step seven"
            let task8 = "Step eight"
            let task9 = "Step nine"
            let task10 = "Step ten"
            
            tasks.append(task1)
            tasks.append(task2)
            tasks.append(task3)
            tasks.append(task4)
            tasks.append(task5)
            tasks.append(task6)
            tasks.append(task7)
            tasks.append(task8)
            tasks.append(task9)
            tasks.append(task10)
            
        }
    }

    extension ViewController: MyTableViewCellDelegate {
        func didTapButton() {
            performSegue(withIdentifier: "toInfoSegue", sender: self)
    }
        @objc func didLongPressButton() {
            performSegue(withIdentifier: "toProfileSegue", sender: self)
        }
    }

