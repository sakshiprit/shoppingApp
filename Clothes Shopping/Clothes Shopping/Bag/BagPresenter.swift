import Foundation

class BagPresenter  {
    weak var view: BagViewProtocol?
    var interactor: BagInteractorInputProtocol?
    var wireFrame: BagWireFrameProtocol?
}

 // VIEW -> PRESENTER
extension BagPresenter: BagPresenterProtocol {

}

// Interactor -> PRESENTER
extension BagPresenter: BagInteractorOutputProtocol {
    
    
}

