import Foundation

class DiscoverPresenter  {
    weak var view: DiscoverViewProtocol?
    var interactor: DiscoverInteractorInputProtocol?
    var wireFrame: DiscoverWireFrameProtocol?
}

 // VIEW -> PRESENTER
extension DiscoverPresenter: DiscoverPresenterProtocol {

}

// Interactor -> PRESENTER
extension DiscoverPresenter: DiscoverInteractorOutputProtocol {
    
    
}

