//
//  ViewController.swift
//  Twipper2
//
//  Created by Michael Weitzman on 1/18/16.
//  Copyright © 2016 World Source Tech. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var tweet = TweetCell()
    var tweets = [
        Tweet(tweetText: "tweet one", userName: "userOne", createdAt: "Wed May 06", pictureURL: NSURL(string:"http://lorempixel.com/200/200/")),
        Tweet(tweetText: "tweet two", userName: "userTwo", createdAt: "Wed May 06", pictureURL: NSURL(string: "http://lorempixel.com/201/201/")),
        Tweet(tweetText: "tweet three", userName: "userTwo", createdAt: "Wed May 06", pictureURL: NSURL(string: "http://lorempixel.com/202/202/")),
        Tweet(tweetText: "tweet four", userName: "userThree", createdAt: "Wed May 06", pictureURL: NSURL(string: "http://lorempixel.com/203/203/"))
    ]
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweets.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TweetCell") as! TweetCell
        let tweet = tweets[indexPath.row]
        cell.tweetTextLabel.text = tweet.tweetText
        cell.userNameLabel.text = tweet.userName
        cell.createdAtLabel.text = tweet.createdAt
        if tweet.pictureURL != nil {
            if let imageData = NSData(contentsOfURL: tweet.pictureURL!) {
                cell.pictureImageView.image = UIImage(data: imageData)
            }
        }
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

