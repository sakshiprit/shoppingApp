import Foundation

class NewPresenter  {
    weak var view: NewViewProtocol?
    var interactor: NewInteractorInputProtocol?
    var wireFrame: NewWireFrameProtocol?
}

 // VIEW -> PRESENTER
extension NewPresenter: NewPresenterProtocol {

}

// Interactor -> PRESENTER
extension NewPresenter: NewInteractorOutputProtocol {
    
    
}

