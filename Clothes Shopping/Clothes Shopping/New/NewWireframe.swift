import UIKit

class NewWireFrame: NewWireFrameProtocol {
    
    class func createNewModule() -> UIViewController {

        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "New")
        if let view = viewController as? NewView {
            let presenter: NewPresenterProtocol & NewInteractorOutputProtocol = NewPresenter()
            let interactor: NewInteractorInputProtocol  = NewInteractor()
            let wireFrame: NewWireFrameProtocol = NewWireFrame()
			
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
        return UIStoryboard(name: "New", bundle: Bundle.main)
    }
}
