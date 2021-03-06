import UIKit
import PaperOnboarding

class OnboardingViewController: UIViewController {
  
  @IBOutlet weak var onboarding: PaperOnboarding!
  @IBOutlet weak var skipButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    skipButton.isHidden = true
    addBackButton()
  }
}

extension OnboardingViewController: PaperOnboardingDelegate {
  
  func onboardingWillTransitonToIndex(_ index: Int) {
    skipButton.isHidden = index == 2 ? false : true
  }
  
  func onboardingDidTransitonToIndex(_ index: Int) {
    
  }
  
  func onboardingConfigurationItem(_ item: OnboardingContentViewItem, index: Int) {

  }
}

// MARK: PaperOnboardingDataSource
extension OnboardingViewController: PaperOnboardingDataSource {
  
  func onboardingItemAtIndex(_ index: Int) -> OnboardingItemInfo {
    let titleFont = UIFont(name: "Nunito-Bold", size: 36.0) ?? UIFont.boldSystemFont(ofSize: 36.0)
    let descriptionFont = UIFont(name: "OpenSans-Regular", size: 14.0) ?? UIFont.systemFont(ofSize: 14.0)
    return [
      ("Hotels", "Hotels", "All hotels and hostels are sorted by hospitality rating", "Key", UIColor(red:0.40, green:0.56, blue:0.71, alpha:1.00), UIColor.white, UIColor.white, titleFont,descriptionFont),
      ("Banks", "Banks", "We carefully verify all banks before add them into the app", "Wallet", UIColor(red:0.40, green:0.69, blue:0.71, alpha:1.00), UIColor.white, UIColor.white, titleFont,descriptionFont),
      ("Stores", "Stores", "All local stores are categorized for your convenience", "Shopping-cart", UIColor(red:0.61, green:0.56, blue:0.74, alpha:1.00), UIColor.white, UIColor.white, titleFont,descriptionFont)
      ][index]
  }
  
  func onboardingItemsCount() -> Int {
    return 3
  }
}

