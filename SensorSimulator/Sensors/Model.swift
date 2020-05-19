//
//  Model.swift
//  SensorSimulator
//
//  Created by Erich Benevides Diniz on 15/05/20.
//  Copyright © 2020 Erich Benevides Diniz. All rights reserved.
//

import Foundation


struct Sensor:  Codable {
    let sensorID, mobileID: String
    let tracks: [Track]
    
//    init(_ base: Sensor) {
//        self.sensorID = base.sensorID
//        self.mobileID = base.mobileID
//        self.tracks = base.tracks
//       }
}

// MARK: - Track
struct Track: Codable {
    let signalForce, direction: Double
    let location: Location
}

// MARK: - Location
struct Location: Codable {
    let lat, lon: Double
}


