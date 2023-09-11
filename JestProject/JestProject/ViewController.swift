import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var istanbul = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true
        
        // UITapGestureRecognizer oluştur ve view'e ekle
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeImage))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changeImage(){
        if istanbul == false {
            imageView.image = UIImage(named: "istanbul")
            label.text = "İstanbul"
            istanbul = true
        } else {
            imageView.image = UIImage(named: "izmir")
            label.text = "İzmir"
            istanbul = false
        }
    }
}
