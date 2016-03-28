//
//  FirstViewController.swift
//  MidTerm
//
//  Created by Ted on 3/28/16.
//  Copyright © 2016 Ted.Company. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var movieTable: UITableView!

    var movieHere: AllMovies = AllMovies()
    
   
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieHere.arrayMovie.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Movie Cell") as! MovieCell
        cell.nameMovie.text = movieHere.arrayMovie[indexPath.row].movieName
        cell.screenDate.text = movieHere.arrayMovie[indexPath.row].showDate
        cell.coverImage.image = UIImage(named: movieHere.arrayMovie[indexPath.row].coverImage!)
//  navigationController?.pushViewController(DetailedVC(), animated: true)
        cell.secretButton.tag = indexPath.row
        cell.secretButton.addTarget(self, action: "goDetail:", forControlEvents: .TouchUpInside)

        return cell
        
        
    }
    
    func goDetail(button: UIButton) {
        performSegueWithIdentifier("show detail", sender: button)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let button = sender as! UIButton
        let destination = segue.destinationViewController as! DetailedVC
        destination.movieIndex = button.tag
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTable.dataSource = self
        self.automaticallyAdjustsScrollViewInsets = false

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

