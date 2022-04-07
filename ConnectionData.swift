//
//  ConnectionData.swift
//  Smartpad-iOS
//
//  Created by Alireza Azimi on 2022-03-13.
//

/**
 * Common class for storing and retrieving connectivity information from the application database.
 *
 * Required for connectivity functional requirements (FR1-FR4)
 */

import Foundation

struct ConnectionKeys {
    static let currDeviceName = "currDeviceName"
    static let currDeviceUUID = "currDeviceUUID"
    static let selectedPeerName = "selectedPeerName"
}

class ConnectionData {
    let defaults = UserDefaults.standard
    
    func setCurrentDeviceUUID(uuid: String) {
        defaults.set(uuid, forKey: ConnectionKeys.currDeviceUUID)
        defaults.synchronize()
    }
    
    func getCurrentDeviceUUID() -> String{
        if let currUUID = defaults.string(forKey: ConnectionKeys.currDeviceUUID) {
           return currUUID
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
    
    func setDeviceName(name: String) {
        defaults.set(name, forKey: ConnectionKeys.currDeviceName)
        defaults.synchronize()
    }
    
    func setSelectedPeer(name: String) {
        defaults.set(name, forKey: ConnectionKeys.selectedPeerName)
        defaults.synchronize()
    }
    
    func getSelectedPeer(formatString: Bool = false) -> String {
        
        if let peerName = defaults.string(forKey: ConnectionKeys.selectedPeerName) {
            if (formatString){
                return peerName.components(separatedBy: "|")[0]
            } else {
                return peerName
            }
        } else {
           return ""
        }
    }
}
