import UIKit

class LogOutViewCOntroller: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    var user = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user)"
    }

}
