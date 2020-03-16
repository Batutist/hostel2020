
import UIKit
import Firebase

class UserServicesViewController: UITableViewController {
    var serv = Servicess()
    var user: Users!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFirebase()
        navigationController()
        image()
    }
    func setupFirebase(){
        guard let currentUser = Auth.auth().currentUser else {return}
        user = Users(user: currentUser )
    }
    func navigationController(){
        title = serv.title
        self.navigationItem.backBarButtonItem=UIBarButtonItem(title:"", style:.plain, target: nil, action: nil)//с кнопки назад убирает название
    }
    func image(){
        if let imageLogo = serv.image{
            let url = URL(string: imageLogo)!
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                DispatchQueue.main.async {
                    self.imageView?.image = UIImage(data: data!)
                }
                }.resume()
        }
    }
    
    @IBAction func buttonBuscet(_ sender: Any) {
        alertcontroller()
        buscet()
    }
    func buscet(){
        let ref = Database.database().reference().child("users").child(user.uid!).child("Buscet").child("Services")
        if let title = serv.title {
            let servRef = ref.child(title.lowercased())
            servRef.setValue(serv.convertToDictionary())
        }
    }
    func alertcontroller(){
        let alController = UIAlertController(title:"Услуга добавлен", message: nil, preferredStyle: .alert)
        let alaction = UIAlertAction(title:"Окей", style: .cancel, handler: nil)
        alController.addAction(alaction)
        self.present(alController, animated: true, completion: nil)
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! UserServicesViewCell
        cell.titleServices.text = serv.title
        cell.priceServices.text = serv.price
        return cell
    }
    
}
