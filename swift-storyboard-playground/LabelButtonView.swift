//
//  LabelButtonView.swift
//  swift-storyboard-playground
//
//  Created by 白鳥天太 on 2021/08/17.
//

import UIKit
import Foundation

@IBDesignable
final class LabelButtonView: UIView {
    var xib: [Any]?
    var currentView: UIView?
    @IBAction func click2(_ sender: Any) {
        currentView?.removeFromSuperview()
        currentView = xib?[1] as? UIView
        currentView?.frame = self.bounds
        if let view = currentView {
            self.addSubview(view)
        }
    }
    @IBAction func click(_ sender: Any) {
        currentView?.removeFromSuperview()
        currentView = xib?.first as? UIView
        currentView?.frame = self.bounds
        if let view = currentView {
            self.addSubview(view)
        }
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        loadNib()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        loadNib()
    }

    func loadNib(){
        xib = Bundle.main.loadNibNamed("LabelButton", owner: self, options: nil)
        currentView = xib?.first as? UIView
        currentView?.frame = self.bounds
        if let view = currentView {
            self.addSubview(view)
        }
    }
}
