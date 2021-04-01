import Foundation

class AccountPresenter  {
    weak var view: AccountViewProtocol?
    var interactor: AccountInteractorInputProtocol?
    var wireFrame: AccountWireFrameProtocol?
}

 // VIEW -> PRESENTER
extension AccountPresenter: AccountPresenterProtocol {

}

// Interactor -> PRESENTER
extension AccountPresenter: AccountInteractorOutputProtocol {
    
    
}

