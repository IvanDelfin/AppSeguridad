//
//  ViewController.swift
//  EsquemaNav
//
//  Created by user212047 on 3/9/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var titleNews = ["How to watch Halo on TV","How to play Black ops"]
    var detail = ["You must to turn on the TV and type your Email and your password","You have to move your joystick wherever you want"]

    @IBAction func login(_ sender: UIButton) {
        
    }
    @IBOutlet weak var tableView: UITableView!
    var imageViewNet: UIImageView!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleNews.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "idCell")!
        celda.textLabel?.text = titleNews[indexPath.row]
        celda.detailTextLabel?.text = detail[indexPath.row]
        celda.imageView?.image = UIImage(named: "Logo")
        return celda
    }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaDet = segue.destination as! ViewControllerDetail
        let indice = tableView.indexPathForSelectedRow!
        vistaDet.datoTitle = titleNews[indice.row]
        vistaDet.datoDetail = detail[indice.row]
        //vistaDet.image? = UIImageView(image: "Logo")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(red: 137, green: 198, blue: 200, alpha: 25)
        

        // Do any additional setup after loading the view.
    }



}

