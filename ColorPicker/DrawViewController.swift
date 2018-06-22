//
//  DrawViewController.swift
//  ColorPicker
//
//  Created by 涂舒舰 on 2017/12/22.
//  Copyright © 2017年 涂舒舰. All rights reserved.
//

import UIKit

class DrawViewController: UIViewController {

    @IBOutlet var drawView: DrawView!
    @IBOutlet weak var preview: UIButton!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        preview.backgroundColor = manager.lineColor
    }

    @IBAction func touchUpInside(_ sender: UIButton) {
        switch sender.tag {                                 //判断slider 的tag，公用一个函数
        case 0:
            manager.clean()
        case 1:
            manager.undo()
        case 2:
            manager.redo()
        default:
            break
        }
        drawView.setNeedsDisplay()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
        self.drawView = nil;
    }


}

