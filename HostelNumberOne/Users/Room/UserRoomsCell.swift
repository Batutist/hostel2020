
import UIKit

class UserRoomsCell: UITableViewCell {

    @IBOutlet weak var titleRoomLabel: UILabel!
    
    @IBOutlet weak var priceRoomLabel: UILabel!
    
    @IBOutlet weak var textFieldArrivalDate: UITextField!
    
    @IBOutlet weak var textFieldDepartureDate: UITextField!
    
    @IBOutlet weak var descriptionRoomLabel: UILabel!
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBOutlet weak var titleRooms: UILabel!
    @IBOutlet weak var priceRooms: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
