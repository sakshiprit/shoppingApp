import Foundation
import UIKit

// PRESENTER -> VIEW
protocol CategoryViewProtocol: class {
    var presenter: CategoryPresenterProtocol? { get set }
    
}

// PRESENTER -> WIREFRAME
protocol CategoryWireFrameProtocol: class {

}

// PRESENTER -> INTERACTOR
protocol CategoryInteractorInputProtocol: class {
    var presenter: CategoryInteractorOutputProtocol? { get set }

}

// VIEW -> PRESENTER
protocol CategoryPresenterProtocol: class {
    var view: CategoryViewProtocol? { get set }
    var interactor: CategoryInteractorInputProtocol? { get set }
    var wireFrame: CategoryWireFrameProtocol? { get set }

}

// INTERACTOR -> PRESENTER
protocol CategoryInteractorOutputProtocol: class {

}




