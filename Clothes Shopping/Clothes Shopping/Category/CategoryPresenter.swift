import Foundation

class CategoryPresenter  {
    weak var view: CategoryViewProtocol?
    var interactor: CategoryInteractorInputProtocol?
    var wireFrame: CategoryWireFrameProtocol?
}

 // VIEW -> PRESENTER
extension CategoryPresenter: CategoryPresenterProtocol {

}

// Interactor -> PRESENTER
extension CategoryPresenter: CategoryInteractorOutputProtocol {
    
    
}

