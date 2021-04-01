import UIKit

class AccountWireFrame: AccountWireFrameProtocol {
    
    class func createAccountModule() -> UIViewController {

        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "Account")
        if let view = viewController as? AccountView {
            let presenter: AccountPresenterProtocol & AccountInteractorOutputProtocol = AccountPresenter()
            let interactor: AccountInteractorInputProtocol  = AccountInteractor()
            let wireFrame: AccountWireFrameProtocol = AccountWireFrame()
			
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
        return UIStoryboard(name: "Account", bundle: Bundle.main)
    }
}
