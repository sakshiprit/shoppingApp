import UIKit

class CategoryWireFrame: CategoryWireFrameProtocol {
    
    class func createCategoryModule() -> UIViewController {

        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "Category")
        if let view = viewController as? CategoryView {
            let presenter: CategoryPresenterProtocol & CategoryInteractorOutputProtocol = CategoryPresenter()
            let interactor: CategoryInteractorInputProtocol  = CategoryInteractor()
            let wireFrame: CategoryWireFrameProtocol = CategoryWireFrame()
			
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
        return UIStoryboard(name: "Category", bundle: Bundle.main)
    }
}
