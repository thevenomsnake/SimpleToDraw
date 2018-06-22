//
//  RGBAViewController.swift
//  ColorPicker
//
//  Created by 涂舒舰 on 2017/12/22.
//  Copyright © 2017年 涂舒舰. All rights reserved.
//

import UIKit

class RGBAViewController: UIViewController {

    @IBOutlet weak var preview: UIView!

    @IBOutlet weak var rLabel: UILabel!
    @IBOutlet weak var gLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    @IBOutlet weak var aLabel: UILabel!

    @IBOutlet weak var rSlider: UISlider!
    @IBOutlet weak var gSlider: UISlider!
    @IBOutlet weak var bSlider: UISlider!
    @IBOutlet weak var aSlider: UISlider!

    private var r: CGFloat = 0{
        willSet{
            rLabel.text = "\((Int)(newValue * 255))" //看起来人性化一点
            rSlider.setValue(Float(newValue), animated: true)
        }
    }

    private var g: CGFloat = 0 {
        willSet{
            gLabel.text = "\((Int)(newValue * 255))"
            gSlider.setValue(Float(newValue), animated: true)
        }
    }
    private var b: CGFloat = 0 {
        willSet{
            bLabel.text = "\((Int)(newValue * 255))"
            bSlider.setValue(Float(newValue), animated: true)
        }
    }
    private var a: CGFloat = 0 {
        willSet{
            aLabel.text = "\((Int)(newValue * 255))"
            aSlider.setValue(Float(newValue), animated: true)
        }
    }

    var value: UIColor{
        get{
            return UIColor(red: r, green: g, blue: b, alpha: a)//&只是为了提醒地址
        }
        set{
            newValue.getRed(&r, green: &g, blue: &b, alpha: &a)
            preview.backgroundColor = newValue
        }
    }

    @IBAction func valueChanged(_ sender: UISlider) {
        switch  sender.tag {                         
        case 0:
            r = CGFloat(sender.value)
        case 1:
            g = CGFloat(sender.value)
        case 2:
            b = CGFloat(sender.value)
        case 3:
            a = CGFloat(sender.value)
        default:
            break
        }
        preview.backgroundColor = value
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        value = manager.lineColor
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        manager.lineColor = value
    }
    

}
