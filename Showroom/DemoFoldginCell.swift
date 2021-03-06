import UIKit
import FoldingCell

class DemoFoldginCell: FoldingCell {

  @IBOutlet weak var topBar: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
      foregroundView.layer.cornerRadius = 10
      foregroundView.layer.masksToBounds = true
      backgroundColor = .clear
      topBar.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

  override func animationDuration(_ itemIndex:NSInteger, type:AnimationType)-> TimeInterval {
    
    // durations count equal it itemCount
    let durations = [0.26, 0.2, 0.2] // timing animation for each view
    return durations[itemIndex]
  }
}
