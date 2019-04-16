//
//  TrackingMode.swift
//  EABlurView
//
//  Created by Meniny on 2017/08/17.
//  Copyright © 2017 Bushtit Lab. All rights reserved.
//

public enum TrackingMode: CustomStringConvertible {
    case tracking
    case common
    case none

    public var description: String {
        switch self {
        case .tracking:
            return RunLoop.Mode.tracking.rawValue
        case .common:
            return RunLoop.Mode.common.rawValue
        case .none:
            return ""
        }
    }
}

