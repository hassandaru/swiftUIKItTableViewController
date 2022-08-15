//
//  ViewController.swift
//  NewsDetailView
//
//  Created by Hassan Sohail Dar on 15/8/2022.
//

import UIKit


class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "News"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return News.sampleNews.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath)
        cell.textLabel?.text = News.sampleNews[indexPath.row].heading
        return cell
        
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let dc = storyboard?.instantiateViewController(withIdentifier: "NewsDetail") as? NewsDetailController {
            print(News.sampleNews[indexPath.row].heading)
            print(News.sampleNews[indexPath.row].details)

            dc.selectedNews.heading = News.sampleNews[indexPath.row].heading
            dc.selectedNews.details = News.sampleNews[indexPath.row].details
            
            navigationController?.pushViewController(dc, animated: true)

            
        }
    }
}

