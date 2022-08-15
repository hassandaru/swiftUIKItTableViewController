//
//  NewsDetailController.swift
//  NewsDetailView
//
//  Created by Hassan Sohail Dar on 15/8/2022.
//

import UIKit

class NewsDetailController: UIViewController {

    @IBOutlet var heading: UILabel!
    @IBOutlet var details: UITextView!

    var selectedNews: News = News()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heading.text = selectedNews.heading
        details.text = selectedNews.details

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
