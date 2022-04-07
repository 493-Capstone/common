//
//  GesturePacket.swift
//  Smartpad-iOS
//
//  Created by Hudson Shykowski on 2022-03-18.
//

/**
 * Gesture packet type and gesture payload types. Encoded and sent by the iOS device, decoded and used to
 * generate mouse events by the MacOS device.
 *
 * Required for gesture recognition functional requirements (FR5-FR10)
 */

import Foundation

struct GesturePacket: Codable {
    var touchType: GestureType!
    var payload: Data!
}

struct PinchPayload: Codable {
    var scale: Float!
}

struct PanPayload: Codable {
    var xTranslation: Float!
    var yTranslation: Float!
}

struct SingleTapPayload: Codable {
}

struct SingleTapDoubleClickPayload: Codable {
}

struct DoubleTapPayload: Codable {
}

#if LATENCY_TEST_SUITE
struct LatencyPayload: Codable {
    /* Used for checking for missed packets */
    var packetId: UInt64!
}
#endif // LATENCY_TEST_SUITE
