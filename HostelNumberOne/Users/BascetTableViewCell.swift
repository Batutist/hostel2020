import UIKit

class BascetTableViewCell: UITableViewCell {

    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageLogo: UIImageView!
    @IBOutlet weak var stepperOutlet: UIStepper!
    @IBOutlet weak var countStepper: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    var buyStat : BuyStat! {
        didSet {
            stepperOutlet.value = Double(Int(buyStat.purchaseAmount))
            countStepper.text = String(Int(buyStat.purchaseAmount))
        }
    }
    @IBAction func stepedAction(_ sender: UIStepper) {
        buyStat.purchaseAmount = Int(sender.value)
        self.countStepper.text = String(sender.value)
        print("count = ",sender.value)
        
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
