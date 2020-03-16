import UIKit
import Firebase
class roomsDemostretionViewController: UIViewController {
    @IBOutlet weak var titleRoomLabel: UILabel!
    @IBOutlet weak var priceRoomLabel: UILabel!
    @IBOutlet weak var textFieldDateArrival: UITextField!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var textFieldDateDeparture: UITextField!
    @IBOutlet weak var imageViewLabel: UIImageView!
    var _rooms = [Rooms]()
    var sortedRooms = [Rooms]()
    var sortedProfile = [userAndAdmin]()
    var _services = [Servicess]()
    var _profile = [userAndAdmin]()
    var _buscet = [Category]()
    var _dictKey = [String]()
    
    var arrayOrderArrival = [String]()
    var arrayOrderDeparture = [String]()
    
    var rooms = Rooms() // конкретный номер переданный с прошлого TBV
    var user: Users!
    
    var datePicker: UIDatePicker?
    var datePickerDeparture: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController()
        setupFirebase()
        image()
        datePickerFunc()
        dataPickerDEparture()
        roomArray()
        downloadDate()
    }
    
    // MARK: - OrderButton
    @IBAction func orderButton(_ sender: Any) {
        reservationCheck()
    }
    
    func reservationCheck(){
        arrayOrderArrival.removeAll()
        arrayOrderDeparture.removeAll()
        
        if _rooms.count == 0 { //если массив пустой то его нет в ветки брони
            buscet()
            self.showAlert(title: "Номер добавлен", message: "")
           // alertcontroller()
        } else { // если в нем лежит что-то идет проверка на даты
            for i in _rooms{
                if i.dateArrival == nil || i.dateDeparture == nil{
                    print("date = nil")
                }else{
                    arrayOrderArrival.append(i.dateArrival!)
                    arrayOrderDeparture.append(i.dateDeparture!)
                    if ((i.dateArrival!<=String(textFieldDateArrival.text!) && i.dateDeparture! >= String(textFieldDateArrival.text!)) || (i.dateArrival! <= String(textFieldDateDeparture.text!) && i.dateDeparture! >= String(textFieldDateDeparture.text!) )) || ((String(textFieldDateArrival.text!) <= i.dateArrival!) && (String(textFieldDateDeparture.text!) >= i.dateDeparture!)){
                        //alertcontrollerOrder()
                        self.showAlert(title: "Номер занят" , message: "Номер в эти даты занят c \(arrayOrderArrival) по \(arrayOrderDeparture))")
                        break
                    }else {
                        buscet()
                        self.showAlert(title: "Номер добавлен", message: "")
                        //alertcontroller()
                    }
                }
            }
        }
    }
    func buscet(){
        let ref = Database.database().reference().child("users").child(user.uid!).child("Buscet").child("Rooms")
        if let title = rooms.title {
            rooms.dateArrival = textFieldDateArrival.text
            rooms.dateDeparture = textFieldDateDeparture.text
            let roomsRef = ref.child(title.lowercased())
            roomsRef.setValue(rooms.convertToDictionary())
        }
    }
}
