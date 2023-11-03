//
//  ViewController.swift
//  sideMeniuTask4
//
//  Created by vaishnavi  on 05/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mtTable: UITableView!
    @IBOutlet weak var myView: UIView!
    var menuNames = ["Apple" , "Mango" , "Lemon" , "Guava" , "Orange"]
    var menuImages = ["Apple" , "Mango" , "Lemon" , "Guava" , "Orange"]
    var viewOpen : Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()
        RegisterFiles()
        self.myView.isHidden = true
        viewOpen = false
        // Do any additional setup after loading the view.
    }

    @IBAction func sideMenuBtn(_ sender: Any) {
        myView.isHidden = false
        mtTable.isHidden = false
        if !viewOpen {
            viewOpen = true
            myView.frame = CGRect(x: 0, y: 88, width: 0, height: 808)
            mtTable.frame = CGRect(x: 0, y: 88, width: 0, height: 808)
            UIView.animate(withDuration: 1) {
                self.myView.frame = CGRect(x: 0, y: 88, width: 240, height: 808)
                self.mtTable.frame = CGRect(x: 0, y: 88, width:240, height: 808)
            }
        }
        else {
            myView.isHidden = true
            mtTable.isHidden = true
            viewOpen = false
            myView.frame = CGRect(x: 0, y: 88, width: 0, height: 808)
            mtTable.frame = CGRect(x: 0, y: 88, width: 0, height: 808)
            UIView.animate(withDuration: 1) {
                self.myView.frame = CGRect(x: 0, y: 88, width: 240, height: 808)
                self.mtTable.frame = CGRect(x: 0, y: 0, width:240, height: 808)
            }
        }
    }
    func RegisterFiles() {
        mtTable.register(UINib(nibName: "menuTableViewCell", bundle: nil), forCellReuseIdentifier: "menuCell")
    }
}

extension ViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! menuTableViewCell
        cell.menuImg.image = UIImage(named: menuImages[indexPath.row])
        cell.menuTitle.text = menuNames[indexPath.row]
        return cell
    }
   
}
