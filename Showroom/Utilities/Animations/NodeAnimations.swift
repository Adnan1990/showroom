import UIKit
import pop

enum NodeAnimations {
  case alphaFrom(CGFloat, to: CGFloat, removed: Bool)
  case alpha(to: CGFloat)
  case color(to: UIColor)
  case titleColor(to: UIColor) // only for UILabel
  case viewScale(from: CGFloat, to: CGFloat)
  case layerPositionY(from: CGFloat, to: CGFloat)
}

extension NodeAnimations {
  
  var createAnimation: POPBasicAnimation {
    switch self {
    case .alphaFrom(let from, let to, let removed): return createPopAlphaAnimation(from, to: to, removed: removed)
    case .alpha(let to): return createPopAlphaAnimation(nil, to: to, removed: false)
    case .color(let to): return createPopColorAnimation(to)
    case .titleColor(let to): return createPopTitleColorAnimation(to)
    case .viewScale(let from, let to): return createPopViewScaleAnimation(from: from, to: to)
    case .layerPositionY(let from, let to): return createPopLayerYAnimation(from: from, to: to)
    }
  }
}
