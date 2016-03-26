//
//  ViewController.swift
//  05-ToDo
//
//  Created by leeguoyu on 16/3/26.
//  Copyright © 2016年 leeguoyu. All rights reserved.
//

import UIKit

var todos: [TodoModel] = []

func dateFromString(dateStr: String) -> NSDate? {
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let date = dateFormatter.dateFromString(dateStr)
    return date
}

class ViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        todos = [TodoModel(id: "1", image: "child-selected", title: "去游乐场", date: dateFromString("2016-03-25")!), TodoModel(id: "2", image: "shopping-cart-selected", title: "去购物", date: dateFromString("2016-04-25")!), TodoModel(id: "3", image: "phone-selected", title: "打电话", date: dateFromString("2016-05-25")!), TodoModel(id: "4", image: "travel-selected", title: "去旅行", date: dateFromString("2016-05-25")!)]

    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("todoCell")! as UITableViewCell
        
        let todo = todos[indexPath.row] as TodoModel
        
        //设置图片
        let image = cell.viewWithTag(101) as! UIImageView
        image.image = UIImage(named: todo.image)
        
        //设置标题
        let title = cell.viewWithTag(102) as! UILabel
        title.text = todo.title
        
        //设置日期
        //注意 yyyy-MM-dd 一定要注意区分大小写，不然出来结果有异
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = NSDateFormatter.dateFormatFromTemplate("yyyy-MM-dd", options: 0, locale: NSLocale.currentLocale())

        
        let date = cell.viewWithTag(103) as! UILabel
        date.text = dateFormatter.stringFromDate(todo.date)
        
        return cell
    }

}

