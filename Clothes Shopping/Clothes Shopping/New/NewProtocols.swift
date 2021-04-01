import Foundation
import UIKit

// PRESENTER -> VIEW
protocol NewViewProtocol: class {
    var presenter: NewPresenterProtocol? { get set }
    
}

// PRESENTER -> WIREFRAME
protocol NewWireFrameProtocol: class {

}

// PRESENTER -> INTERACTOR
protocol NewInteractorInputProtocol: class {
    var presenter: NewInteractorOutputProtocol? { get set }

}

// VIEW -> PRESENTER
protocol NewPresenterProtocol: class {
    var view: NewViewProtocol? { get set }
    var interactor: NewInteractorInputProtocol? { get set }
    var wireFrame: NewWireFrameProtocol? { get set }

}

// INTERACTOR -> PRESENTER
protocol NewInteractorOutputProtocol: class {

}




