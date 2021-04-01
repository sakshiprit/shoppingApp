import UIKit

class BagWireFrame: BagWireFrameProtocol {
    
    class func createBagModule() -> UIViewController {

        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "Bag")
        if let view = viewController as? BagView {
            let presenter: BagPresenterProtocol & BagInteractorOutputProtocol = BagPresenter()
            let interactor: BagInteractorInputProtocol  = BagInteractor()
            let wireFrame: BagWireFrameProtocol = BagWireFrame()
			
            view.presenter = presenter
            presenter.view = view
            presenter.wireFrame = wireFrame
            presenter.interactor = interactor
            interactor.presenter = presenter
            return viewController
        }
        return UIViewController()
    }
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Bag", bundle: Bundle.main)
    }
}
