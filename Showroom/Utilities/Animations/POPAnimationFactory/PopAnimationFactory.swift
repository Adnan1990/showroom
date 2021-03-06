import pop
import UIKit

func createPopAlphaAnimation(_ from: CGFloat?, to: CGFloat, removed: Bool) -> POPBasicAnimation {
  
  let animaiton = POPBasicAnimation(propertyNamed: kPOPViewAlpha)
  animaiton?.fromValue = (from)
  animaiton?.toValue = (to)
//  animaiton?.removedOnCompletion = removed
  return animaiton!
}

func createPopColorAnimation(_ to: UIColor) -> POPBasicAnimation {
  
  let animaiton = POPBasicAnimation(propertyNamed: kPOPLayerBackgroundColor)
  animaiton?.toValue = (to.cgColor)
  return animaiton!
}

func createPopTitleColorAnimation(_ to: UIColor) -> POPBasicAnimation {
  
  let animaiton = POPBasicAnimation(propertyNamed: kPOPLabelTextColor)
  animaiton?.toValue = (to.cgColor)
  return animaiton!
}

func createPopViewScaleAnimation(from: CGFloat, to: CGFloat) -> POPBasicAnimation {
  
  let animaiton = POPBasicAnimation(propertyNamed: kPOPViewScaleXY)
  animaiton?.toValue = NSValue(cgPoint: CGPoint(x: to, y: to))
  animaiton?.fromValue = NSValue(cgPoint: CGPoint(x: from, y: from))
  return animaiton!
}

func createPopLayerYAnimation(from: CGFloat, to: CGFloat) -> POPBasicAnimation {
  
  let animaiton = POPBasicAnimation(propertyNamed: kPOPLayerPositionY)
  animaiton?.toValue = (to)
  animaiton?.fromValue = (from)
  animaiton?.removedOnCompletion = true
  return animaiton!
}
