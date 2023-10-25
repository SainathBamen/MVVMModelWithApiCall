//
//  ViewController.swift
//  MVVMModelWithApiCall
//
//  Created by Sainath Bamen on 09/05/23.
//

import UIKit

class ViewController: UIViewController {
    let parser = Parse()
    var contact = [Welcome]()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        parser.Parser(completion: { [self]
            data in
            self.contact = data
            DispatchQueue.main.async {
                self.tableView.reloadData()

            }
            tableView.dataSource = self
        })
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       // cell.textLabel?.text = contact[indexPath.row].name
        return cell
    }
    
    
}

