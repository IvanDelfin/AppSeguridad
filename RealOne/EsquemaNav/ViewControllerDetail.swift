//
//  ViewControllerDetail.swift
//  EsquemaNav
//
//  Created by user212047 on 3/9/22.
//

import UIKit
import SwiftUI

class ViewControllerDetail: UIViewController {
    
    var datoTitle: String = ""
    var datoDetail: String = ""
    @State var image: UIImageView? = nil
    
    
    
    
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDetail: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTitle.text = datoTitle
        labelDetail.text = datoDetail
        imgView = image
        

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
