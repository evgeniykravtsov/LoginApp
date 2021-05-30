
import UIKit

class HobbyViewController: UIViewController {
    @IBOutlet weak var labelTitle: UILabel!

    @IBOutlet weak var labelDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let info = Info.getInfoHobby()
        
        labelTitle.text = info.title
        labelDescription.text = info.description

    }
}
