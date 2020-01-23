//
//  VideoPlayerView.swift
//  zLab
//
//  Created by Luqmaan Khan on 1/22/20.
//  Copyright © 2020 Luqmaan Khan. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class VideoPlayerView: UIView {
    var player: AVPlayer? {
       get {
         return playerLayer.player
       }

       set {
         playerLayer.player = newValue
       }
     }
     override class var layerClass: AnyClass {
       return AVPlayerLayer.self
     }
    
     var playerLayer: AVPlayerLayer {
       return layer as! AVPlayerLayer
     }
}
