//
//  DataSource.swift
//  SensorSimulator
//
//  Created by Erich Benevides Diniz on 15/05/20.
//  Copyright © 2020 Erich Benevides Diniz. All rights reserved.
//

import Foundation
import UIKit




class GenericDataSource<T> : NSObject {
    var data: DynamicValue<[T]> = DynamicValue([])
    
    
}

