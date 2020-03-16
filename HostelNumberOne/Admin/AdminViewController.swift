//import UIKit
//import Firebase
//
//class AdminViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//    @IBAction func unwindToThisViewController(segue: UIStoryboardSegue){ // объявление сегвея для возврата на этот вью
//    }
//    @IBAction func signOutTapped(_ sender: UIBarButtonItem) {
//        do {
//            try Auth.auth().signOut()
//        } catch {
//            print(error.localizedDescription)
//        }
//        dismiss(animated: true, completion: nil)
//
//    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 4
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if indexPath.row == 0 {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "employeesCell", for: indexPath)
//            cell.textLabel?.text = "Соткрудники"
//            cell.accessoryType = .disclosureIndicator
//            return cell
//        }
//        else if indexPath.row == 1 {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "servicesCell", for: indexPath)
//            cell.textLabel?.text = "Услуги"
//            cell.accessoryType = .disclosureIndicator
//            return cell
//        }
//        else if indexPath.row == 2 {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "roomsCell", for: indexPath)
//            cell.textLabel?.text = "Номера"
//            cell.accessoryType = .disclosureIndicator
//            return cell
//        }
//        else {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "orderUserCell", for: indexPath)
//            cell.textLabel?.text = "Данные клиента "
//            cell.accessoryType = .disclosureIndicator
//            return cell
//        }
//    }
//
////orderUserCell
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }
//
//}
