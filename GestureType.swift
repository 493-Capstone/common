//
//  GestureType.swift
//  Smartpad-iOS
//
//  Created by Hudson Shykowski on 2022-03-18.
//

/**
 * Common gesture types. Stored in gesture packets sent by the iOS device and sent to the MacOS device
 *
 * Required for gesture recognition functional requirements (FR5-FR10)
 */

// Documentation on various iOS gesture recognizers:
// Pinch: https://developer.apple.com/documentation/uikit/touches_presses_and_gestures/handling_uikit_gestures/handling_pinch_gestures
//
// Pan:
// https://developer.apple.com/documentation/uikit/touches_presses_and_gestures/handling_uikit_gestures/handling_pan_gestures
//
//

public enum GestureType: Codable {
    case PinchStarted
    case PinchChanged
    case PinchEnded
    case SinglePanStarted
    case SinglePanChanged
    case SinglePanEnded
    case DoublePanStarted
    case DoublePanChanged
    case DoublePanEnded
    case DragPanStarted
    case DragPanChanged
    case DragPanEnded
    case SingleTap
    case SingleTapDoubleClick
    case DoubleTap
#if LATENCY_TEST_SUITE
    case Latency
#endif // LATENCY_TEST_SUITE
}
