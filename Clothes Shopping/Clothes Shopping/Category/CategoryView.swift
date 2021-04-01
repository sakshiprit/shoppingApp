import UIKit

class CategoryView: UIViewController {
    
    var presenter: CategoryPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
}

// PRESENTER -> VIEW
extension CategoryView: CategoryViewProtocol {
    

}

