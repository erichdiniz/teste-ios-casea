//
//  SensorViewModel.swift
//  SensorSimulator
//
//  Created by Erich Benevides Diniz on 17/05/20.
//  Copyright © 2020 Erich Benevides Diniz. All rights reserved.
//

import Foundation
import UIKit
//private var service: HPService
class SensorViewModel{
var dataSource: SensorsDataSource

init(source: SensorsDataSource){
    
    self.dataSource = source
    
}


    func fetchSensor(){
        self.dataSource.addSensor()

//    consolidation of all sensosrs, after 5 seconds, it will print the sensosrs list
        var sensors = self.dataSource.sensor
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            

            let jsonEncoder = JSONEncoder()
            jsonEncoder.outputFormatting = .prettyPrinted
            
            let jsonData = try? jsonEncoder.encode(self.dataSource.sensor)

            if let jsonString = String(data: jsonData ?? jsonData!, encoding: .utf8) {print(jsonString)}
            if self.dataSource.sensor.isEmpty != true {
                self.dataSource.sensor.removeAll()

            }
        }
    }
    
}
