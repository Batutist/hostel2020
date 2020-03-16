//import Foundation
//import Firebase
//
//class UsersUid: NSObject, Codable {
//    var uid : String?
//
//    enum CodingKeys: String, CodingKey {
//        case uid
//    }
//
//    init(usersUId : User ) {
//        self.uid = usersUId.uid
//    }
//    init(snapshot: DataSnapshot){
//        let snapshotValue = snapshot.value as! [String: Any]
//        self.uid = snapshotValue["uid"] as? String
//
//    }
//    override init() {
//        self.uid = nil
//    }
//}
