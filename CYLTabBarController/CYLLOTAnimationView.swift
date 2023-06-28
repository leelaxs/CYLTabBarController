//
//  CYLLOTAnimationView.swift
//  CYLTabBarController
//
//  Created by 菜鸽途讯 on 2023/6/27.
//

import UIKit
import Lottie

@objcMembers
open class CYLLOTAnimationView: UIView {
    
    var aniUrl: URL?
    var aniView: AnimationView?
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        aniView?.frame = self.bounds
    }
    
    @objc public init(aniUrl: URL? = nil) {
        super.init(frame: .zero)
        self.aniUrl = aniUrl
        if let aUrl = aniUrl {
            aniView = AnimationView(url:aUrl) { (error) in
                print("\(String(describing: error))")
            }
            aniView!.isUserInteractionEnabled = false
            aniView!.contentMode = .scaleToFill
            aniView!.clipsToBounds = false
            self.addSubview(aniView!)
        }
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc public func animationProgress(_ progress: CGFloat){
        let _  = aniView?.animation?.frameTime(forProgress: progress)
    }
    
    @objc public func forceDrawingUpdate() {
        aniView?.forceDisplayUpdate()
    }
    
    @objc public func play() {
        aniView?.play()
    }
    
    @objc public func stop() {
        aniView?.stop()
    }
}
