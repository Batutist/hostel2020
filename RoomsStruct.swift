import Foundation
import Firebase

struct RoomsStruct {
    var title : String?
    var userId: String?
    var price : String?
    var isOrder : Bool
 //   var inTheBascet : Bool
    var isAdmin : Bool
    let ref : DatabaseReference?
    
    init(title : String, userId : String, price : String, isOrder : Bool, isAdmin : Bool) {
        self.title = title
        self.userId = userId
        self.price = price
        self.isOrder = isOrder
        self.isAdmin = isAdmin
        self.ref = nil
    }
    
    init(snapshot: DataSnapshot) {
        let snapshotValue = snapshot.value as! [String: AnyObject]
        self.title = snapshotValue["title"] as? String
        self.userId = snapshotValue["userId"] as? String
        self.price = snapshotValue["price"] as? String
        self.isOrder = (snapshotValue["isOrder"] as? Bool)!
        self.isAdmin = (snapshotValue["isAdmin"] as? Bool)!
        self.ref = snapshot.ref
    }
    
    init() {
        self.title = nil
        self.userId = nil
        self.price = nil
        self.isOrder = false
        self.isAdmin = true
        self.ref = nil
    }
    
    func convertToDictionary() -> Any {
        return ["title":title!,"userId":userId!,"price":price!,"isOrder":isOrder]
    }
}
