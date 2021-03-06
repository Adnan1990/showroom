import Foundation
import UIKit
import RAMAnimatedTabBarController
import NavigationStack

extension Showroom.Control {
  
  var title: String {
    switch self {
    case .circleMenu: return "Circle Menu"
    case .foldingCell: return "FoldingCell"
    case .paperSwitch: return "Paper Switch"
    case .paperOnboarding: return "Pagination Controller"
    case .expandingCollection: return "Expanding Collection"
    case .previewTransition: return "Preview Transition"
    case .animationTabBar: return "Animation TabBar"
    case .realSearch: return "Real Search"
    case .navigationStack: return "Navigation Stack"
    }
  }
  
  var info: String {
    switch self {
    case .circleMenu: return "No Text"
    case .foldingCell: return "An expanding content cell inspired by folding paper material. It helps to navigate between cards in userinterfaces."
    case .paperSwitch: return "The module paints over the parent view when the switch is turned on. Inspired by Google’s Material Design. "
    case .paperOnboarding: return "A Material Design pagination controller. It is used for onboarding flows or tutorials."
    case .expandingCollection: return "No Text"
    case .previewTransition: return "No Text"
    case .animationTabBar: return "A module for adding animation to tab bar items. Helps to push native tab bar a bit further with subtle animations."
    case .realSearch: return "The control helps to search faster by proactively providing the most relevant keywords as you type."
    case .navigationStack: return "No Text"
    }
  }
  
  var hours: String {
    switch self {
    case .circleMenu: return "000"
    case .foldingCell: return "160"
    case .paperSwitch: return "80"
    case .paperOnboarding: return "120"
    case .expandingCollection: return "000"
    case .previewTransition: return "000"
    case .animationTabBar: return "120"
    case .realSearch: return "120"
    case .navigationStack: return "000"
    }
  }
  
  var languages: String {
    switch self {
    case .circleMenu: return "Swift, UIKit"
    case .foldingCell: return "Swift, UIKit"
    case .paperSwitch: return "Swift, UIKit"
    case .paperOnboarding: return "Swift, UIKit"
    case .expandingCollection: return "Swift, UIKit"
    case .previewTransition: return "Swift, UIKit"
    case .animationTabBar: return "Swift, UIKit"
    case .realSearch: return "Swift, UIKit"
    case .navigationStack: return "Swift, UIKit"
    }
  }
    
    var image: String {
        switch self {
        case .circleMenu: return "CircleMenu"
        case .foldingCell: return "FoldingCell"
        case .paperSwitch: return "PaperSwitch"
        case .paperOnboarding: return "PaginationController"
        case .expandingCollection: return "ExpandingController"
        case .previewTransition: return "PreviewTransition"
        case .animationTabBar: return "AnimatedTabBar"
        case .realSearch: return "ReelSearch"
        case .navigationStack: return "NavigationStack"
        }
    }
  
  var viewController: UIViewController {
    let main = UIStoryboard(storyboard: .Main)
    let tabbar = UIStoryboard(storyboard: .AnimatedTabBar)
    let stack = UIStoryboard(storyboard: .NavigationStack)
    switch self {
    case .circleMenu: return main.instantiateViewController() as CircleViewController
    case .foldingCell: return main.instantiateViewController() as FoldingTableViewController
    case .paperSwitch: return main.instantiateViewController() as SwitchViewController
    case .paperOnboarding: return main.instantiateViewController() as OnboardingViewController
    case .expandingCollection: return main.instantiateViewController() as DemoExpandingViewController
    case .previewTransition: return main.instantiateViewController() as DemoTableViewController
    case .animationTabBar: return tabbar.instantiateViewController() as RAMAnimatedTabBarController
    case .realSearch: return main.instantiateViewController() as SearchViewController
    case .navigationStack: return stack.instantiateViewController() as NavigationStack
    }
  }
}
