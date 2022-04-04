//
//  GesturePacket.swift
//  Smartpad-iOS
//
//  Created by Hudson Shykowski on 2022-03-18.
//

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
