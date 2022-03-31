//
//  ConnectionData.swift
//  Smartpad-iOS
//
//  Created by Alireza Azimi on 2022-03-13.
//

import Foundation
import MultipeerConnectivity
enum StorageError: Error {
    case ValueNotFoundError
}
struct ConnectionKeys {
    static let connDeviceUUID = "connDeviceUUID"
    static let currDeviceName = "currDeviceName"
    static let selectedPeerName = "selectedPeerName"
}

class ConnectionData {
    let defaults = UserDefaults.standard
    
    func setSelectedDeviceUUID(uuid: String){
        defaults.set(uuid, forKey: ConnectionKeys.connDeviceUUID)
        defaults.synchronize()
    }
    
    func getSelectedDeviceUUID() -> String {
        if let deviceUUID = defaults.string(forKey: ConnectionKeys.connDeviceUUID) {
           return deviceUUID
        } else {
            return ""
        }
        
    }
    
    func getDeviceName() -> String{
        if let deviceName = defaults.string(forKey: ConnectionKeys.currDeviceName) {
           return deviceName
        } else {
   
           return ""
        }
    }
    
    func setDeviceName(name: String){
        defaults.set(name, forKey: ConnectionKeys.currDeviceName)
        defaults.synchronize()
    }
    
    func setSelectedPeer(name: String){
        defaults.set(name, forKey: ConnectionKeys.selectedPeerName)
        defaults.synchronize()
    }
    
    func getSelectedPeer() -> String {
        if let peerName = defaults.string(forKey: ConnectionKeys.selectedPeerName) {
           return peerName
        } else {
   
           return ""
        }
        
    }

}
