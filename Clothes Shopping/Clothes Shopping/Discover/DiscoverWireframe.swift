import UIKit

class DiscoverWireFrame: DiscoverWireFrameProtocol {
    
    class func createDiscoverModule() -> UIViewController {

        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "DiscoverView")
        if let view = viewController as? DiscoverView {
            let presenter: DiscoverPresenterProtocol & DiscoverInteractorOutputProtocol = DiscoverPresenter()
            let interactor: DiscoverInteractorInputProtocol  = DiscoverInteractor()
            let wireFrame: DiscoverWireFrameProtocol = DiscoverWireFrame()
			
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
        return UIStoryboard(name: "Discover", bundle: Bundle.main)
    }
}
