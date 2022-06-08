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
    
    /* [22.06.08]
     인스펙터 탭의 맨 마지막에 있는 커넥션 인스펙터 탭은 스토리보드 객체와 클래스 사이의 연결 상태를 보여주는 역할을 할 뿐만아니라 연결을 추가하거나, 연결을 끓는 역할도 함께합니다.
     
     연결 방법
     1. 연결할 객체를 선택한다.
     2. Show the Connections inspector로 이동한다.
     3. Referencing Outlets의 [New Referencing Outlet] 옆의 O를 드레그한다.
     4. 프로퍼티를 작성하면 연결이 된다.
     */
    
    // 인스펙터를 이용해 연결한 uniTitle02 
    @IBOutlet var uniTitle02: UILabel!
    
    @IBAction func clickBtn01(_ sender: Any) {
        
    }
    
    // 인스펙터를 이용해 연결한 clickBtn02
    @IBAction func clickBtn02(_ sender: Any) {
    }
}

