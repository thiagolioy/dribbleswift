//
//  ViewController.swift
//  dribbleClient
//
//  Created by Thiago Lioy on 6/8/14.
//  Copyright (c) 2014 Thiago Lioy. All rights reserved.
//

import UIKit

class ShotsListViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet var tableview : UITableView = nil
    var shots:Shot[] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchShots()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateTableView(shots:Shot[]){
        tableview.delegate = self
        tableview.dataSource = self
        tableview.reloadData()
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        return shots.count
    }
    
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        let shotCellId = "ShotTableViewCellID"
        let cell = tableview.dequeueReusableCellWithIdentifier(shotCellId) as ShotTableViewCell
        let shot = shots[indexPath.row]
        cell.shotTitle.text = shot.title
        cell.shotImage.setImageWithURL(NSURL(string: shot.imageUrl))
        return cell
    }
    
        func getJSON(urlToRequest: String) -> NSData{
    return NSData(contentsOfURL: NSURL(string: urlToRequest))
}
    func parseJSON(inputData: NSData) -> NSDictionary{
        var error: NSError?
        var boardsDictionary: NSDictionary = NSJSONSerialization.JSONObjectWithData(inputData, options: NSJSONReadingOptions.MutableContainers, error: &error) as NSDictionary
        
        return boardsDictionary
    }

    
    func fetchShots(listType:String = "popular"){
        
        let title = "title"
        let url = "https://d13yacurqjgara.cloudfront.net/users/238469/screenshots/1587373/linkedin_1x.png"
        shots += Shot(title:title,imageUrl:url)
        shots += Shot(title:title,imageUrl:url)
        updateTableView(shots)
        
//        let baseUrl = NSURL(string: "http://api.dribbble.com/shots/\(listType)")
//        let manager = AFHTTPRequestOperationManager(baseURL: baseUrl)
//        let queryUrl = "shots/\(listType)"
//        
//        func successBlock(operation: AFHTTPRequestOperation!, responseObject: AnyObject!) {
//         
//              updateTableView(shots)
//        }
//        
//        func errorBlock(operation: AFHTTPRequestOperation!, error:NSError!) {
//            
//        }
//        
//        manager.GET(queryUrl, parameters: nil, success:successBlock , failure:errorBlock)
      }

}

