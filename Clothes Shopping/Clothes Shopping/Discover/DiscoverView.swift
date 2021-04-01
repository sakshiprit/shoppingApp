import UIKit

class DiscoverView: UIViewController {
    
    var presenter: DiscoverPresenterProtocol?
    
    @IBOutlet weak var tableView: UITableView!
    
   // let firstObject = Dict
   
    
    
    var priceList1: [String: Int] = ["itemOne" : 100,
                      "itemTwo" : 300,
                      "itemThree" : 500 ]
    
    var priceList2 : [String: Int] = ["itemOne" : 600,
                      "itemTwo" : 700,
                      "itemThree" : 800]
    
    var priceList3: [String: Int] = ["itemOne" : 300,
                      "itemTwo":500,
                      "itemThree":900 ]
    
    var myArray: [[String: Int]]?
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myArray   = [priceList1, priceList2, priceList3]
        let nib = UINib(nibName: "DiscoverTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DiscoverTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
	
}

// PRESENTER -> VIEW
extension DiscoverView: DiscoverViewProtocol {
    

}


extension DiscoverView: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.tableView.separatorStyle = .none
        return myArray!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DiscoverTableViewCell", for: indexPath) as! DiscoverTableViewCell
        let dict = myArray![indexPath.row]
        cell.priceLbl.text = String(dict["itemOne"]!)
        cell.firstImage.backgroundColor = .blue
        cell.priceLb2.text = String(dict["itemTwo"]!)
        cell.secondImage.backgroundColor = .purple
        cell.priceLb3.text =  String(dict["itemThree"]!)
        cell.thirdImage.backgroundColor = .red
        return cell
        
    }
    
    
    
}
