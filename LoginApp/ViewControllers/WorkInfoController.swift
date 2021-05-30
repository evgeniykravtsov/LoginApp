
import UIKit

class WorkInfoController: UIViewController {
    
    @IBOutlet weak var labelTitle: UILabel!
    
    @IBOutlet weak var labelDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let info = Info.getInfoWork()
        
        labelTitle.text = info.title
        labelDescription.text = info.description
    }

}
