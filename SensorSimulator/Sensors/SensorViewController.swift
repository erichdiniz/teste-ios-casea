//
//  SensorViewController.swift
//  SensorSimulator
//
//  Created by Erich Benevides Diniz on 15/05/20.
//  Copyright © 2020 Erich Benevides Diniz. All rights reserved.
//

import UIKit

class SensorViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    var source = SensorsDataSource(sensors: [])
    var sensor = [Sensor]()
    
    lazy var viewModel = SensorViewModel(source: source)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(SensorsTableViewCell.self, forCellReuseIdentifier: "SensorCell")

        self.tableView.dataSource = self.source
      
        let _ = Timer.scheduledTimer(withTimeInterval: self.source.randomDouble(startNumber: 1, endNumber: 3), repeats: true) { [weak self] _ in
            self?.viewModel.fetchSensor()
        }
        
        source.addObserver(self) {
            
            self.tableView.reloadData()
        }
        

    }
    

 
}
