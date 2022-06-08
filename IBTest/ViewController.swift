//
//  ViewController.swift
//  IBTest
//
//  Created by 이두산 on 2022/06/08.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    /* [22.06.08]
     @IBOutlet / @IBAction 의 앞에 생기는 O는
     보조에디터를 추가할 수 있다.
     
     프로퍼티나 메소드가 인터페이스 빌더의 객체와 연결되어 있다는 것을 시각적으로 알 수 있다.
    */
    @IBOutlet var UniTitle01: UILabel!
    
    @IBAction func clickBtn01(_ sender: Any) {
        
    }
}

