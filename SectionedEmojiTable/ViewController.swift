//
//  ViewController.swift
//  SectionedEmojiTable
//
//  Created by yodyodsmall on 10/6/16.
//  Copyright © 2016 yuryg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //TableView Required Methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.section == 0{
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell")
        myCell?.textLabel?.text = "Main Text Label💫"
        myCell?.detailTextLabel?.text = "detail label  : )"
        return myCell!
        }
        
        else if indexPath.section == 1{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell2")
            myCell?.textLabel?.text = "Main Text BLAH"
            myCell?.detailTextLabel?.text = "detail label  BLAH BLAH"
            return myCell!

                
            }
        else if indexPath.section == 2{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell")
            myCell?.textLabel?.text = "Main Text BLAH"
            myCell?.detailTextLabel?.text = "detail label  BLAH BLAH"
            return myCell!
            
        }
        else{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell2")
            myCell?.textLabel?.text = "Main Text BLAH"
            myCell?.detailTextLabel?.text = "detail label  BLAH BLAH"
            return myCell!
            
        }
        
    }
    
   
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        let myCGFloat = CGFloat(40)
        return myCGFloat
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    
        if section == 0{
        return "Hi, I'm the First Header Title"
        } else if section  == 1{
            return "Hi, I'm the Second Title"
        
    } else if section  == 2{
    return "Hi, I'm the 3rd Title"
    } else if section  == 3{
    return "Hi, I'm the 4th Title"
    }  else if section  == 4{
        return "Hi, I'm the 5th Title"
    }
        else{
            return "Mystery Section"
        }
    }
    
    
}


