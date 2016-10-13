//
//  ViewController.swift
//  SectionedEmojiTable
//
//  Created by yodyodsmall on 10/6/16.
//  Copyright © 2016 yuryg. All rights reserved.
//
//  Making Change for GitHub

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

    //TableView Required Methods  // Called with TableView Loads
    func numberOfSections(in tableView: UITableView) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return faceEmoji.count
            
        } else if section == 1 {
            return foodEmoji.count
        } else if section == 2 {
            return animalEmoji.count
        } else if section == 3 {
            return nerdyEmoji.count

        
        
        } else{
            return 5
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
// return a UITableViewCell
// work with the indexPath, to get section & row. [for the array element].
        if indexPath.section == 0{
        let myCell = tableView.dequeueReusableCell(withIdentifier:"myCell")
       myCell?.textLabel?.text = faceEmoji[indexPath.row]
       myCell?.detailTextLabel?.text =  "Faces"
            return myCell!
        }
        else if indexPath.section == 1{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell2")
            myCell?.textLabel?.text = foodEmoji[indexPath.row]
            myCell?.detailTextLabel?.text = "Food"
            return myCell!

                
            }
        else if indexPath.section == 2{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell3")
            myCell?.textLabel?.text = animalEmoji[indexPath.row]
            myCell?.detailTextLabel?.text = "animals"
            return myCell!
            
        }
        else{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell4")
            myCell?.textLabel?.text = nerdyEmoji[indexPath.row]
            myCell?.detailTextLabel?.text = "nerdy stuff"
            return myCell!
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        let myCGFloat = CGFloat(30)
        return myCGFloat
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    
        if section == 0{
        return "FACES ;)"
        } else if section  == 1{
            return "FOOD YUM YUMMY"
        
    } else if section  == 2{
    return "CUTE ANIMALS"
    } else if section  == 3{
    return "Nerdy Stuff"
    }  else if section  == 4{
        return "Hi, I'm the 5th Title"
    }
        else{
            return "Mystery Section"
        }
    }
    
    
    
    let faceEmoji = ["😀","😁","😂","😃","😆","😇","😈","👿",]   //created array
    
    let foodEmoji = ["🍎","🍏","🍐","🍑","🍒","🍓","🍔","🍕","🍖","🍗","🍘","🍙","🍚","🍛","🍜","🍝","🍞","🍟","🍡","🍢","🍣","🍤","🍥","🍦","🍧","🍨","🍩","🍪","🍫"]
    
    let animalEmoji = ["🐅","🐆","🐯","🐇","🐰","🐈","🐱","🐴","🐏","🐥","🐦","🐧","🐶","🐺","🐻","🐨","🐼","🐵","🙈","🙉","🙊","🐒","🐢","🐋","🐬","🐙","🐌","🐛","🐜","🐝","🐞"]
    
    let nerdyEmoji = ["👓","👒","👞","👟","👕","👔", "🔬","🔭","🔮"]

    
    
}


