import Foundation
import UIKit

// PRESENTER -> VIEW
protocol AccountViewProtocol: class {
    var presenter: AccountPresenterProtocol? { get set }
    
}

// PRESENTER -> WIREFRAME
protocol AccountWireFrameProtocol: class {

}

// PRESENTER -> INTERACTOR
protocol AccountInteractorInputProtocol: class {
    var presenter: AccountInteractorOutputProtocol? { get set }

}

// VIEW -> PRESENTER
protocol AccountPresenterProtocol: class {
    var view: AccountViewProtocol? { get set }
    var interactor: AccountInteractorInputProtocol? { get set }
    var wireFrame: AccountWireFrameProtocol? { get set }

}

// INTERACTOR -> PRESENTER
protocol AccountInteractorOutputProtocol: class {

}




