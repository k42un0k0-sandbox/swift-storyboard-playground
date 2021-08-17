//
//  RoundButton.swift
//  swift-storyboard-playground
//
//  Created by 白鳥天太 on 2021/08/17.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
  override init(frame: CGRect) {
    super.init(frame: frame)
    customDesign()
  }
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    customDesign()
  }
  
  override func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    customDesign()
  }
  
  private func customDesign() {
    layer.cornerRadius = frame.height/2
    backgroundColor = UIColor.red
  }
}
