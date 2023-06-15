//
//  ViewController.swift
//  loginOdev
//
//  Created by Halit Bakır on 15.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblDeneme: UILabel!
    @IBOutlet weak var txtKullanici: UITextField!
    @IBOutlet weak var txtParola: UITextField!
    
    let kullanici = "admin"
    let sifre = "1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnUyari(_ sender: Any) {
        lblDeneme.text = "\(txtKullanici.text!) \(txtParola.text!)"
        
        if txtKullanici.text! == kullanici && txtParola.text! == sifre {
            showAlert(title: "Başarılı !", message: "Bilgiler doğru")
        } else {
            showAlert(title: "Hata !", message: "Bilgiler yanlış")
        }
    }
    
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "Tamam", style: .default, handler: nil)
        alertController.addAction(OKAction)
        present(alertController, animated: true, completion: nil)
    }
    
}
    



