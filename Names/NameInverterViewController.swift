
import UIKit

class NameInverterViewController: UIViewController {
  
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var nameTextInput: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupBackgroundTap()
  }
  
  func setupBackgroundTap() {
    
    let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapBackground))
    self.view.addGestureRecognizer(tapGesture)
  }
  
  @objc func tapBackground() {
    nameTextInput.resignFirstResponder()
  }
  
  func formatName() {
    guard let name = nameTextInput.text else {
      return
    }
    
    let nameFormatter = NameFormatter(name: name)
    let invertedName = nameFormatter.inverted()
    
    nameLabel.text = invertedName
  }
  
  @IBAction func submitName(_ sender: Any) {
    formatName()
  }
  
}

extension NameInverterViewController: UITextFieldDelegate {
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    formatName()
    return true
  }
}
