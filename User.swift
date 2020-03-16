import Foundation
import Firebase
class Users: NSObject, Codable {
    var uid: String?
    var email: String?
    
    enum CodingKeys: String, CodingKey {
        case uid
        case email
    }
    init(user : User ) {
        self.uid = user.uid
        self.email = user.email!
    }
    init(snapshot: DataSnapshot){
        let snapshotValue = snapshot.value as! [String: Any]
        self.uid = snapshotValue["uid"] as? String
        self.email = snapshotValue["email"] as? String
    }
    override init() {
        self.uid = nil
        self.email = nil
    }
}

