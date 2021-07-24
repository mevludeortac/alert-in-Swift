
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTxt: UITextField!
    
    @IBOutlet weak var passwordTxt: UITextField!
    
    @IBOutlet weak var passwordCheckTxt: UITextField!
    var name = ""
    var password = ""
    var passwordCheck = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        name = nameTxt.text!
        password = passwordTxt.text!
        passwordCheck = passwordCheckTxt.text!
    }

    @IBAction func signupClicked(_ sender: Any) {
       /* let alert = UIAlertController(title: "Error", message: "hatalı giriş", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { (UIAlertAction) in
            print("button clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
     */
        if nameTxt.text == "" {
            makeAlert(titleInput: "ERROR!", messageInput: "Kullanıcı adı boş bırakılamaz!")
        }else if passwordTxt.text == "" {
            makeAlert(titleInput: "ERROR!", messageInput: "Şifre boş bırakılamaz!")
        } else if passwordCheckTxt.text != passwordTxt.text{
            makeAlert(titleInput: "ERROR!", messageInput: "Şifreler eşleşmiyor")
        } else{
            makeAlert(titleInput: "SUCSESS!", messageInput:"Giriş başarılı!")
        }

    }
    func makeAlert(titleInput:String, messageInput:String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
    }
        
    }

