import Foundation
import UIKit

// PRESENTER -> VIEW
protocol BagViewProtocol: class {
    var presenter: BagPresenterProtocol? { get set }
    
}

// PRESENTER -> WIREFRAME
protocol BagWireFrameProtocol: class {

}

// PRESENTER -> INTERACTOR
protocol BagInteractorInputProtocol: class {
    var presenter: BagInteractorOutputProtocol? { get set }

}

// VIEW -> PRESENTER
protocol BagPresenterProtocol: class {
    var view: BagViewProtocol? { get set }
    var interactor: BagInteractorInputProtocol? { get set }
    var wireFrame: BagWireFrameProtocol? { get set }

}

// INTERACTOR -> PRESENTER
protocol BagInteractorOutputProtocol: class {

}




