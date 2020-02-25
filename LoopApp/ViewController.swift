//
//  ViewController.swift
//  LoopApp
//
//  Created by Bae Hyunjin on 2020/02/25.
//  Copyright © 2020 Bae Hyunjin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myView:UIView! //이미지가 부착될 뷰
    
    @IBOutlet weak var t_row: UITextField!
    
    @IBOutlet weak var t_col: UITextField!
    
    @IBAction func btnCreate(_ sender: Any) {
        //실행타임에 UIImageViewX를 생성하자! 동적생성!!
        //programmatically creation!!
        
        //row 값 입력 받기
        var row = t_row.text!
        var col = t_col.text!
        
        for a in 1...Int(row)!{
            for i in 1...Int(col)!{
                var imgView = UIImageView(image: UIImage(named: "ang.png"))
                
                
                //크기를 먼저 설정
                imgView.frame = CGRect(x: i*52, y: (50*a), width: 50, height: 50)
                //생성된 이미지뷰를 디폴트부모 뷰에 부착!!
                myView.addSubview(imgView)
    
            }
        }
    }
    
    @IBAction func btnRemove(_ sender: Any) {
        
        //기존 디폴트 뷰로부터 생성된 자식뷰들을 제거
        
        //배열에 들어있는 이미지 요소들을 하나씩 꺼내어
        //그 이미지뷰가 보유한 removeFromSuperView()를 호출하자
        
        for obj in myView.subviews{
            obj.removeFromSuperview()
        }
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // 이미지가 부착될 뷰를 준비하자!!
        //프로그래밍 적으로 생성하자!!
        
        myView = UIView(frame: CGRect(x: 0, y: 200, width: 414, height: 500))
        
        myView.backgroundColor = UIColor.yellow
        
        //부모 뷰에 부착!!
         self.view.addSubview(myView)
        
        
    }
    
    
}

