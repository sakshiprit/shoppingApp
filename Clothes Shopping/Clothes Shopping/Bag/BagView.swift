import UIKit

class BagView: UIViewController {
    
    var presenter: BagPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
}

// PRESENTER -> VIEW
extension BagView: BagViewProtocol {
    

}

