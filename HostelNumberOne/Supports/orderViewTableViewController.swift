//import UIKit
//
//class orderViewTableViewController: UITableViewController{
//    var _rooms = [Rooms]()
//    var _services = [Servicess]()
//    var _dictKey = [String]()
//    var _profile = [userAndAdmin]()
//    var sortedProfile = [userAndAdmin]()
//    var sortedArrayRooms = [Rooms]()
//    var sortedArrayServices = [Servicess]()
//    let sectionHeaders = [" Profile ","Room","Services"] // Заголовки
//    var sectionContent = [[userAndAdmin]().self,[Rooms]().self,[Servicess]().self] as [Any]
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setupTableView()
//        sortedRooms()
//        sortedServic()
//        sortedProfilefunc()
//
//
//    }
//    func setupTableView(){
//        tableView.tableFooterView = UIView(frame: CGRect.zero) // мметод что бы не прорисовывались лишнии ячейки
//
//    }
//
//    // MARK: - Table view data source
//
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return sectionHeaders[section]
//    }
//
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return sectionHeaders.count
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        if section == 0 {
//            return 1
//        }else if section == 1{
//            return sortedArrayRooms.count
//        }else{
//            return sortedArrayServices.count
//        }
//    }
//
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if indexPath.section == 0{
//            let cell = tableView.dequeueReusableCell(withIdentifier: "CellProfile", for: indexPath) as! orderViewCell
//            let profile = sortedProfile[indexPath.row]
//            cell.titleLaybel.text = profile.email
//            return cell
//
//        }else if indexPath.section == 1{
//            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! orderViewCell
//            let rooms = sortedArrayRooms[indexPath.row]
//            cell.titleLaybel.text = rooms.title
//
//
//            return cell
//        }else {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "CellServ", for: indexPath) as! orderViewCell
//            cell.titleLaybel.text = _services[indexPath.row].title
//            let services = sortedArrayServices[indexPath.row]
//            cell.titleLaybel.text = services.title
//            return cell
//        }
//    }
//}
//
//// MARK: - sorted Rooms and Services
//extension orderViewTableViewController{
//    func sortedRooms(){
//        for item in _rooms.enumerated(){
//            if [item.element.dataTimeOrder] == _dictKey {
//                let rooms = Rooms(title: item.element.title!, userId: item.element.userId!, price: item.element.price!, status: item.element.status!, order: item.element.order!, image: item.element.image!, dataTimeOrder: item.element.dataTimeOrder!)
//                self.sortedArrayRooms.append(rooms)
//                self.sectionContent.append(rooms)
//                tableView.reloadData()
//            }
//        }
//    }
//    func sortedServic(){
//        for item in _services.enumerated(){
//            if [item.element.dataTimeOrder] == _dictKey {
//                let serv = Servicess(title: item.element.title!, price: item.element.price!, userId: item.element.userId!, order: item.element.order!, status: item.element.status!, image: item.element.image!, dataTimeOrder: item.element.dataTimeOrder!)
//                self.sortedArrayServices.append(serv)
//                self.sectionContent.append(serv)
//
//                tableView.reloadData()
//            }
//        }
//    }
//    func sortedProfilefunc(){
//        for itemProfile in _profile.enumerated(){
//            for itemRooms in sortedArrayRooms.enumerated(){
//                if itemProfile.element.email == itemRooms.element.userId {
//                    let prof = userAndAdmin(email: itemProfile.element.email!, fullName: itemProfile.element.fullName!, isAdmin: itemProfile.element.isAdmin!, passport: itemProfile.element.passport!, password: itemProfile.element.password!, userId: itemProfile.element.userId!)
//                    self.sortedProfile.append(prof)
//                    self.sectionContent.append(prof)
//                    tableView.reloadData()
//                }
//            }
//        }
//    }
//}
//
