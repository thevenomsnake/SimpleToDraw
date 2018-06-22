//
//  PathManager.swift
//  ColorPicker
//
//  Created by 涂舒舰 on 2017/12/23.
//  Copyright © 2017年 涂舒舰. All rights reserved.
//

import UIKit

typealias Line = (path: UIBezierPath, color: UIColor)
let manager = PathManager.shared//减少代码量

class PathManager{
    static let shared = PathManager()
    private init(){}

    var lines = [Line]()
    var trash = [Line]()
    var lineColor = UIColor.black

    func addLine(){
        manager.lines.append((UIBezierPath(), lineColor))
    }

    var current : (line: Line?, path: UIBezierPath?, pathColor: UIColor?){//不确定是不是= =，应该是？类型
        get{
            return (lines.last, lines.last?.path, lines.last?.color)
        }
    }
    
 
    
    

    func clean(){
        lines.removeAll()
        trash.removeAll()
        //setNeedsDisplay()不再需要，不是view
    }

    func undo(){
        if !lines.isEmpty{
            trash.append(lines.removeLast())
        }
         //setNeedsDisplay()不再需要，不是view
    }

    func redo(){
        if !trash.isEmpty{
            lines.append(trash.removeLast())
        }
    }//setNeedsDisplay()不再需要，不是view
}
