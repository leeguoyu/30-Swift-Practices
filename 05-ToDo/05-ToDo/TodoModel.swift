//
//  TodoModel.swift
//  05-ToDo
//
//  Created by leeguoyu on 16/3/26.
//  Copyright © 2016年 leeguoyu. All rights reserved.
//

import UIKit

class TodoModel: NSObject {
    
    var id: String
    var image: String
    var title: String
    var date: NSDate
    
    init(id: String, image: String, title: String, date: NSDate) {
        self.id = id
        self.image = image
        self.title = title
        self.date = date
    }

}
