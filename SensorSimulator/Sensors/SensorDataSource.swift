//
//  SensorDataSource.swift
//  SensorSimulator
//
//  Created by Erich Benevides Diniz on 15/05/20.
//  Copyright © 2020 Erich Benevides Diniz. All rights reserved.
//

import Foundation
import UIKit

class SensorsDataSource: NSObject, UITableViewDataSource {
   
    


    func addSensor()  {
        sensor.append(
            Sensor(sensorID: randomString(length: 10),
                   mobileID: UIDevice.current.identifierForVendor!.uuidString,
                   tracks:
                [Track(signalForce:
                        randomDouble(startNumber: 0.0, endNumber: 1.0),
                       direction:
                        randomDouble(startNumber: -10.0, endNumber: 10.0),
                    location:
                        Location(lat:
                                randomDouble(startNumber: 0.0, endNumber: 1.0),
                                 lon:
                                randomDouble(startNumber: -50.0, endNumber: 50.0)))]))
    

    }
    
    
    public var sensor = [Sensor](){ didSet{ self.Notify()}}
    public var observers: CompletionHandler?
    lazy var viewModel = SensorViewModel(source: self)

    init(sensors: [Sensor]){self.sensor = sensors}
    
    
    
    public func addObserver(_ observer:NSObject, completionHandler: @escaping CompletionHandler){
        observers = completionHandler
    }
    
    public func Notify(){
        observers?()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return sensor.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        tableView.register(SensorsTableViewCell.self, forCellReuseIdentifier: "SensorCell")

        //if the identifier SensorCell gets registered, it will return properly, and the dequeueReusableCell takes care of that
          //dont call it until registered
        let cell = tableView.dequeueReusableCell(withIdentifier: "SensorCell", for: indexPath) as! SensorsTableViewCell
        


        
        //the text from the labels will recieve the itens from the object, each row have its own itens, based on the indexpath
        
//        let sensorRow = self.sensor[indexPath.row]
//        cell.sensorID.text = sensorRow.sensorID

        

        return cell
    }
    
//     Random numbers generated for the sensors
    func randomString(length: Int) -> String {
      let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
      return String((0..<length).map{ _ in letters.randomElement()! })
    }
    
   public func randomDouble(startNumber: Double, endNumber: Double) -> Double{
        let numbers = Double.random(in: startNumber...endNumber)
        return numbers
    }
}

