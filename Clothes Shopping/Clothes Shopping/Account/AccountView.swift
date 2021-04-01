import UIKit

class AccountView: UIViewController {
    
    var presenter: AccountPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
}

// PRESENTER -> VIEW
extension AccountView: AccountViewProtocol {
    

}

