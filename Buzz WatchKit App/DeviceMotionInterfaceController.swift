//
//  DeviceMotionInterfaceController.swift
//  Buzz
//
//  Created by Maverick on 10/5/15.
//  Copyright © 2015 Maverick. All rights reserved.
//


import WatchKit
import Foundation
import CoreMotion


class DeviceMotionInterfaceController: WKInterfaceController {
    
    
    let motionManager = CMMotionManager()
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }
    
    override func willActivate() {
        super.willActivate()
        
        let handler: CMDeviceMotionHandler = {(motion: CMDeviceMotion?, error: NSError?) -> Void in
        }
        
        if (motionManager.deviceMotionAvailable == true) {
            motionManager.startDeviceMotionUpdatesToQueue(NSOperationQueue.currentQueue()!, withHandler: handler)
        }
        else {
          
        }
    }
    
    override func didDeactivate() {
        super.didDeactivate()
        
        motionManager.stopDeviceMotionUpdates()
    }
    
}