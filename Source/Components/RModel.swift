//
//  RModel.swift
//  RiveRuntime
//
//  Created by Zachary Duncan on 3/24/22.
//  Copyright © 2022 Rive. All rights reserved.
//

import Foundation

public struct RModel { // TODO: Rename to RAssetState
    /// The web address from which to load the `RiveFile`
    public let webURL: String? = nil
    
    /// The name of the file from which to load the .riv file
    public let fileName: String?
    
    /// Specifies how and if the animation should be resized to fit its container
    public var fit: RiveRuntime.Fit = .fitContain
    
    /// Specifies how the animation should be aligned to its container
    public var alignment: RiveRuntime.Alignment = .alignmentCenter
    
    /// Determines if the animation should play as soon as it is loaded
    public var autoplay: Bool = true
    
    /// Determines the `Artboard` to use. By default the first Artboard in the `RiveFile` is picked
    public var artboardName: String? = nil
    
    /// Determines the `Animation` to play. By default the first Animation/StateMachine in the `RiveFile` is picked
    public var animationName: String? = nil
    
    /// Determine the `StateMachine`to play, ignored if `animation` is set.
    /// By default the first Animation/StateMachine in the riveFile is picked
    public var stateMachineName: String? = nil
    
    public var description: String {
          "URL: ["           + (webURL ?? "None")           + "]/n"
        + "File Name: ["     + (fileName ?? "None")         + "]/n"
        + "Fit: ["           + fit.description              + "]/n"
        + "Alignment: ["     + alignment.description        + "]/n"
        + "Autoplay: ["      + autoplay.description         + "]/n"
        + "Artboard: ["      + (artboardName ?? "None")     + "]/n"
        + "Animation: ["     + (animationName ?? "None")    + "]/n"
        + "State Machine: [" + (stateMachineName ?? "None") + "]/n"
    }
    
    public init(fileName: String?, stateMachineName: String? = nil) {
        self.fileName = fileName
        self.stateMachineName = stateMachineName
    }
}

public extension RiveRuntime.Fit {
    var description: String {
        switch self {
        case .fitNone:      return "None"
        case .fitFill:      return "Fill"
        case .fitContain:   return "Contain"
        case .fitCover:     return "Cover"
        case .fitFitHeight: return "Fit Height"
        case .fitFitWidth:  return "Fit Width"
        case .fitScaleDown: return "Scale Down"
        @unknown default:   return "Unknown"
        }
    }
}

public extension RiveRuntime.Alignment {
    var description: String {
        switch self {
        case .alignmentCenter:          return "Center"
        case .alignmentCenterLeft:      return "Center Left"
        case .alignmentCenterRight:     return "Center Right"
        case .alignmentTopLeft:         return "Top Left"
        case .alignmentTopCenter:       return "Top Center"
        case .alignmentTopRight:        return "Top Right"
        case .alignmentBottomLeft:      return "Bottom Left"
        case .alignmentBottomCenter:    return "Bottom Center"
        case .alignmentBottomRight:     return "Bottom Right"
        @unknown default:               return "Unknown"
        }
    }
}
