import UIKit

class NewView: UIViewController {
    
    var presenter: NewPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
}

// PRESENTER -> VIEW
extension NewView: NewViewProtocol {
    

}

