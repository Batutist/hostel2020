import UIKit

extension UIViewController {
    
    func showAlert(title: String,
                   message: String,
                   isCancelButton: Bool? = nil,
                   isOkDestructive: Bool? = nil,
                   okButtonName: String? = nil,
                   completion: (() -> Void)? = nil) {
        
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        var OkBtnName = "Ок"
        if okButtonName != nil {
            OkBtnName = okButtonName!
        }
        
        var styleOkButton: UIAlertAction.Style = .default
        
        if isOkDestructive != nil && isOkDestructive == true {
            styleOkButton = UIAlertAction.Style.destructive
        }
        
        var okButton = UIAlertAction()
        
        if completion != nil {
            
                okButton = UIAlertAction(title: OkBtnName, style: styleOkButton) { (_) in
                    completion!()
                }
            
            alert.addAction(okButton)
            
            if isCancelButton != nil && isCancelButton == true {
                let cancelAction = UIAlertAction(title: "Отмена", style: .default)
                alert.addAction(cancelAction)
            }
        } else {
            okButton = UIAlertAction(title: "Ок", style: .default)
            alert.addAction(okButton)
        }
        
        present(alert, animated: true)
    }
}
