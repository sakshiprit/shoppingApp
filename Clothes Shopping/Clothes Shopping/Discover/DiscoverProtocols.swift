import Foundation
import UIKit

// PRESENTER -> VIEW
protocol DiscoverViewProtocol: class {
    var presenter: DiscoverPresenterProtocol? { get set }
    
}

// PRESENTER -> WIREFRAME
protocol DiscoverWireFrameProtocol: class {

}

// PRESENTER -> INTERACTOR
protocol DiscoverInteractorInputProtocol: class {
    var presenter: DiscoverInteractorOutputProtocol? { get set }

}

// VIEW -> PRESENTER
protocol DiscoverPresenterProtocol: class {
    var view: DiscoverViewProtocol? { get set }
    var interactor: DiscoverInteractorInputProtocol? { get set }
    var wireFrame: DiscoverWireFrameProtocol? { get set }

}

// INTERACTOR -> PRESENTER
protocol DiscoverInteractorOutputProtocol: class {

}




